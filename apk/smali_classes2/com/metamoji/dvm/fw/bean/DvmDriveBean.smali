.class public Lcom/metamoji/dvm/fw/bean/DvmDriveBean;
.super Lcom/metamoji/dvm/fw/bean/DvmBean;
.source "DvmDriveBean.java"


# static fields
.field public static STATUS_ACCESS_DENIED:I = 0x1

.field public static STATUS_EXPIRED:I = 0x4

.field public static STATUS_OUT_OF_SPACE:I = 0x2


# instance fields
.field private m_driveId:Ljava/lang/String;

.field private m_groupId:Ljava/lang/String;

.field private m_groupName:Ljava/lang/String;

.field private m_hidden:Ljava/lang/Integer;

.field private m_name:Ljava/lang/String;

.field private m_owner:Ljava/lang/Boolean;

.field private m_status:Ljava/lang/Integer;

.field private m_type:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/entities/SdMODrive;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setDriveId(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getOwner()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setOwner(Ljava/lang/Boolean;)V

    .line 28
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setType(Ljava/lang/Integer;)V

    .line 29
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setStatus(Ljava/lang/Integer;)V

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setGroupName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setGroupId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODrive;->getHidden()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setHidden(Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    .line 36
    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setDriveId(Ljava/lang/String;)V

    .line 37
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setName(Ljava/lang/String;)V

    .line 38
    const-string v0, "hidden"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->setHidden(Ljava/lang/Integer;)V

    return-void
.end method

.method public static getDriveId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getDriveName(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 116
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getGroupId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 108
    const-string v0, "groupId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTeamId(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    const-string v0, "teamId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isHidden(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 120
    const-string v0, "hidden"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_hidden:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_owner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAdmin()Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_owner:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isHidden()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_hidden:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_driveId:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_groupId:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_groupName:Ljava/lang/String;

    return-void
.end method

.method public setHidden(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_hidden:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_owner:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_status:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->m_type:Ljava/lang/Integer;

    return-void
.end method
