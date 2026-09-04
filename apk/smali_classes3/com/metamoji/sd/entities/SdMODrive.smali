.class public Lcom/metamoji/sd/entities/SdMODrive;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODrive.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODrive"
.end annotation


# instance fields
.field private m_groupId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_groupId"
        index = true
    .end annotation
.end field

.field private m_groupName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_groupName"
    .end annotation
.end field

.field private m_groupOrder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_groupOrder"
        index = true
    .end annotation
.end field

.field private m_hidden:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_hidden"
        defaultValue = "0"
    .end annotation
.end field

.field private m_homeDir:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_homeDir"
    .end annotation
.end field

.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
        index = true
    .end annotation
.end field

.field private m_lastUpdateRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_lastUpdateRevision"
    .end annotation
.end field

.field private m_localCacheId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_localCacheId"
    .end annotation
.end field

.field private m_maintenanceText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_maintenanceText"
    .end annotation
.end field

.field private m_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_name"
    .end annotation
.end field

.field private m_order:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_order"
        index = true
    .end annotation
.end field

.field private m_owner:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_owner"
    .end annotation
.end field

.field private m_status:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_status"
    .end annotation
.end field

.field private m_type:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupOrder()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_hidden:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHomeDir()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateRevision()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_lastUpdateRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCacheId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_localCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceText()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_maintenanceText:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_order:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_owner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupName:Ljava/lang/String;

    return-void
.end method

.method public setGroupOrder(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_groupOrder:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Ljava/lang/Integer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_hidden:Ljava/lang/Integer;

    return-void
.end method

.method public setHomeDir(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_homeDir:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateRevision(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_lastUpdateRevision:Ljava/lang/String;

    return-void
.end method

.method public setLocalCacheId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_localCacheId:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceText(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_maintenanceText:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_order:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_owner:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_status:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODrive;->m_type:Ljava/lang/Integer;

    return-void
.end method
