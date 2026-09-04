.class public Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnTextUnitDirectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    }
.end annotation


# static fields
.field public static final MMJUNTEXTUNIT_DIRECTIONDATA_KIND:Ljava/lang/String; = "textunit.directiondata.kind"

.field private static final MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND; = null

.field public static final MMJUNTEXTUNIT_DIRECTIONTYPE_DICTIONARY:Ljava/lang/String; = "textunitdirection.dictionary"

.field public static final MMJUNTEXTUNIT_DIRECTIONTYPE_MODEL:Ljava/lang/String; = "textunitdirection.model"

.field public static final MMJUN_MODELPROPVALUE_TEXTUNITDIRECTION_VERSION_LATEST:I = 0x1


# instance fields
.field private _bySendBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 62
    iput-boolean p2, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->_bySendBack:Z

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 2

    .line 138
    const-string/jumbo v0, "textunitdirection.model"

    invoke-static {p0, v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isTargetTextModelDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 147
    :cond_1
    const-string/jumbo v0, "textunitdirection.dictionary"

    invoke-static {p0, v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isTargetTextModelDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 127
    const-string v0, "$text"

    invoke-static {p0, v0}, Lcom/metamoji/ns/direction/NsDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newDictionaryDirectionData(Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;)Ljava/lang/Object;
    .locals 3

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    const-string v1, "!type"

    const-string/jumbo v2, "textunitdirection.dictionary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "textunit.directiondata.kind"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    invoke-direct {p0, v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static newDirectionDataWithTextModel(Lcom/metamoji/un/text/model/TextModel;)Ljava/lang/Object;
    .locals 1

    .line 80
    new-instance v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newModelDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;)Ljava/lang/Object;
    .locals 1

    .line 90
    const-string/jumbo v0, "textunitdirection.model"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 93
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 96
    const-string/jumbo v0, "textunit.directiondata.kind"

    invoke-virtual {p1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->intValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 98
    new-instance p1, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;

    invoke-direct {p1, p0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public bySendback()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->_bySendBack:Z

    return v0
.end method

.method public getDirectionKind()Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;
    .locals 4

    .line 205
    sget-object v0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->MMJUNTEXTUNIT_DIRECTIONKIND_NONE:Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    .line 208
    iget-object v1, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v2, "textunitdirection.model"

    invoke-static {v1, v2}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "textunit.directiondata.kind"

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 210
    invoke-static {v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->parseInt(I)Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v3, "textunitdirection.dictionary"

    invoke-static {v1, v3}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 217
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;->parseInt(I)Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData$MMJUNTEXTUNIT_DIRECTIONKIND;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v1, "textunitdirection.model"

    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string v1, "$text"

    .line 185
    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v1, "textunitdirection.dictionary"

    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const-string v1, "!version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 193
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    .line 186
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    return v0
.end method

.method public isDictionaryTypeDirection()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v1, "textunitdirection.dictionary"

    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isModelTypeDirection()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string/jumbo v1, "textunitdirection.model"

    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTextModelTypeDirection()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->m_direction:Ljava/lang/Object;

    const-string v1, "$text"

    invoke-static {v0, v1}, Lcom/metamoji/un/text/collabo/UnTextUnitDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
