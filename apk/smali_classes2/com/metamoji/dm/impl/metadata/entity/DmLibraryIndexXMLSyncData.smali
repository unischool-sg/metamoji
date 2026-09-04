.class public abstract Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;
.super Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;
.source "DmLibraryIndexXMLSyncData.java"


# static fields
.field private static final DECIMAL_POINT_COMMA:C = ','

.field private static final DECIMAL_POINT_PERIOD:C = '.'


# instance fields
.field private _lastSyncedRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "lastSyncedRevision"
    .end annotation
.end field

.field private _serverId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "serverId"
    .end annotation
.end field

.field private _serverUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "serverUpdate"
    .end annotation
.end field

.field private _syncStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "syncStatus"
    .end annotation
.end field

.field private _syncType:Lcom/metamoji/dm/DmEntitySyncType;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "syncType"
    .end annotation
.end field

.field private _syncTypePrev:Lcom/metamoji/dm/DmEntitySyncType;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "syncTypePrev"
    .end annotation
.end field

.field private _syncUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "syncUpdate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;-><init>()V

    return-void
.end method

.method public static sortKeyItemOfString()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "entityId"

    return-object v0
.end method


# virtual methods
.method public dictionary()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-super {p0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->dictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 77
    const-string v1, "syncType"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncType:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "syncTypePrev"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncTypePrev:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "syncUpdate"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncUpdate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "serverUpdate"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverUpdate:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "lastSyncedRevision"

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getLastSyncedRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getLastSyncedRevision()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLibraryType()Lcom/metamoji/dm/DmLibraryType;
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdate()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getSyncStatus()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncType()Lcom/metamoji/dm/DmEntitySyncType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncType:Lcom/metamoji/dm/DmEntitySyncType;

    return-object v0
.end method

.method public getSyncTypePrev()Lcom/metamoji/dm/DmEntitySyncType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncTypePrev:Lcom/metamoji/dm/DmEntitySyncType;

    return-object v0
.end method

.method public getSyncUpdate()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public setLastSyncedRevision(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdate(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverUpdate:Ljava/util/Date;

    return-void
.end method

.method public setSyncStatus(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncStatus:Ljava/lang/String;

    return-void
.end method

.method public setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncType:Lcom/metamoji/dm/DmEntitySyncType;

    return-void
.end method

.method public setSyncTypePrev(Lcom/metamoji/dm/DmEntitySyncType;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncTypePrev:Lcom/metamoji/dm/DmEntitySyncType;

    return-void
.end method

.method public setSyncUpdate(Ljava/util/Date;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncUpdate:Ljava/util/Date;

    return-void
.end method

.method public setValues(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->setValues(Ljava/util/HashMap;)V

    .line 96
    const-string v0, "syncType"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/DmEntitySyncType;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncType:Lcom/metamoji/dm/DmEntitySyncType;

    .line 97
    const-string v0, "syncTypePrev"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/DmEntitySyncType;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncTypePrev:Lcom/metamoji/dm/DmEntitySyncType;

    .line 98
    const-string v0, "syncStatus"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncStatus:Ljava/lang/String;

    .line 99
    const-string v0, "syncUpdate"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_syncUpdate:Ljava/util/Date;

    .line 100
    const-string v0, "serverUpdate"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverUpdate:Ljava/util/Date;

    .line 101
    const-string v0, "serverId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_serverId:Ljava/lang/String;

    .line 102
    const-string v0, "lastSyncedRevision"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->_lastSyncedRevision:Ljava/lang/String;

    return-void
.end method
