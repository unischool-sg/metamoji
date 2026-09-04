.class public Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "VcRenameIndexTitleDirectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData$IForEachBlock;
    }
.end annotation


# static fields
.field private static final MODELPROPVALUE_RENAME_INDEX_TITLE_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MODELPROP_RENAME_INDEX_TICKET_DIRECTION_TABLE:Ljava/lang/String; = "i"

.field private static final MODELPROP_RENAME_INDEX_TITLE_DIRECTION_TABLE:Ljava/lang/String; = "t"

.field private static final MODELTYPE_RENAME_INDEX_TITLE_DIRECTION:Ljava/lang/String; = "renameIndexTitleDirection"


# instance fields
.field private _direction:Lcom/metamoji/df/model/IModel;

.field private _ticketTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _titleTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    .line 39
    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    .line 47
    :goto_0
    const-string v0, "i"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_ticketTable:Ljava/util/Map;

    return-void

    .line 51
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_ticketTable:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 76
    const-string v0, "renameIndexTitleDirection"

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;
    .locals 1

    .line 59
    const-string v0, "renameIndexTitleDirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 60
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 61
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method


# virtual methods
.method public forEachIndex(Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData$IForEachBlock;)Z
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-interface {p1, v4, v2, v3}, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData$IForEachBlock;->block(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "t"

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_titleTable:Ljava/util/Map;

    invoke-interface {p3, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string p2, "i"

    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcRenameIndexTitleDirectionData;->m_direction:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
