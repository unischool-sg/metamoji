.class public Lcom/metamoji/sd/entities/SdMOPrivateDrive;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOPrivateDrive.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOPrivateDrive"
.end annotation


# instance fields
.field private m_current:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_current"
    .end annotation
.end field

.field private m_driveId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_driveId"
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

.field private m_maintenanceText:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_maintenanceText"
    .end annotation
.end field

.field private m_merging:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_merging"
    .end annotation
.end field

.field private m_status:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_status"
    .end annotation
.end field

.field private m_userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_userId"
        index = true
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
.method public getCurrent()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_current:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeDir()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateRevision()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_lastUpdateRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceText()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_maintenanceText:Ljava/lang/String;

    return-object v0
.end method

.method public getMerging()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_merging:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent(Ljava/lang/Boolean;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_current:Ljava/lang/Boolean;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method public setHomeDir(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_homeDir:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateRevision(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_lastUpdateRevision:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceText(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_maintenanceText:Ljava/lang/String;

    return-void
.end method

.method public setMerging(Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_merging:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_status:Ljava/lang/Integer;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->m_userId:Ljava/lang/String;

    return-void
.end method
