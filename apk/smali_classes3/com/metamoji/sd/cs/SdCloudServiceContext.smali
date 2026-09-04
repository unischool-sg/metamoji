.class public Lcom/metamoji/sd/cs/SdCloudServiceContext;
.super Ljava/lang/Object;
.source "SdCloudServiceContext.java"


# instance fields
.field private m_driveId:Ljava/lang/String;

.field private m_homeDir:Ljava/lang/String;

.field private m_maintenanceText:Ljava/lang/String;

.field private m_userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_driveId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeDir()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_homeDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenanceText()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_maintenanceText:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method public setHomeDir(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_homeDir:Ljava/lang/String;

    return-void
.end method

.method public setMaintenanceText(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_maintenanceText:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudServiceContext;->m_userId:Ljava/lang/String;

    return-void
.end method
