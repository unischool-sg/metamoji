.class Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;
.super Ljava/lang/Object;
.source "DrAddRemoveDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrAddRemoveInternal"
.end annotation


# instance fields
.field baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field element:Lcom/metamoji/un/draw2/module/element/DrElement;

.field elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field elementModel:Lcom/metamoji/df/model/IModel;

.field elementOrder:I

.field executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

.field groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field model:Lcom/metamoji/df/model/IModel;

.field strokeEndIndex:D

.field strokeStartIndex:D


# direct methods
.method constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 103
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 104
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    return-void
.end method

.method static getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 255
    const-string v0, "b"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 243
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;
    .locals 2

    .line 239
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    return-object p0
.end method

.method static getStrokeEndIndexFromModel(Lcom/metamoji/df/model/IModel;)D
    .locals 3

    .line 251
    const-string v0, "e"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    return-wide v0
.end method

.method static getStrokeStartIndexFromModel(Lcom/metamoji/df/model/IModel;)D
    .locals 3

    .line 247
    const-string/jumbo v0, "s"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 111
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    .line 114
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 117
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 120
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 123
    const-string v0, "o"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    .line 126
    const-string v0, "g"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 134
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    .line 141
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getStrokeStartIndexFromModel(Lcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 144
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getStrokeEndIndexFromModel(Lcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    .line 147
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 232
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 234
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 175
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 177
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "m"

    if-eqz v0, :cond_0

    .line 183
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 185
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 190
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    const-string v1, "o"

    if-ltz v0, :cond_0

    .line 191
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 193
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    const-string/jumbo v2, "t"

    if-ne v0, v1, :cond_0

    .line 167
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 169
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    const-string v1, "g"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 201
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 205
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 210
    :cond_2
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 223
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string v3, "e"

    if-ltz v2, :cond_0

    .line 224
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 226
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 215
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string/jumbo v3, "s"

    if-ltz v2, :cond_0

    .line 216
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 218
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
