.class public Lcom/metamoji/sd/entities/SdMOFolder;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOFolder.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOFolder"
.end annotation


# instance fields
.field private m_absPath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_absPath"
        index = true
    .end annotation
.end field

.field private m_childrenOrder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_childrenOrder"
    .end annotation
.end field

.field private m_childrenOrderOrigin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_childrenOrderOrigin"
    .end annotation
.end field

.field private m_childrenOrderRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_childrenOrderRevision"
    .end annotation
.end field

.field private m_childrenOrderUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_childrenOrderUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private m_childrenOrderUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_childrenOrderUpdateFlag"
        index = true
    .end annotation
.end field

.field private m_deleteFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_deleteFlag"
        index = true
    .end annotation
.end field

.field private m_depth:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_depth"
        index = true
    .end annotation
.end field

.field private m_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_name"
        index = true
    .end annotation
.end field

.field private m_revision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_revision"
    .end annotation
.end field

.field private m_update:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_update"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private m_updateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_updateFlag"
        index = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_absPath:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenOrder()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenOrderOrigin()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenOrderRevision()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getChildrenOrderUpdate()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getChildrenOrderUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDeleteFlag()Ljava/lang/Boolean;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_deleteFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDepth()Ljava/lang/Integer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_depth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_revision:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/util/Date;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_update:Ljava/util/Date;

    return-object v0
.end method

.method public getUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_updateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_absPath:Ljava/lang/String;

    return-void
.end method

.method public setChildrenOrder(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrder:Ljava/lang/String;

    return-void
.end method

.method public setChildrenOrderOrigin(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderOrigin:Ljava/lang/String;

    return-void
.end method

.method public setChildrenOrderRevision(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderRevision:Ljava/lang/String;

    return-void
.end method

.method public setChildrenOrderUpdate(Ljava/util/Date;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderUpdate:Ljava/util/Date;

    return-void
.end method

.method public setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_childrenOrderUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setDeleteFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_deleteFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setDepth(Ljava/lang/Integer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_depth:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_revision:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/util/Date;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_update:Ljava/util/Date;

    return-void
.end method

.method public setUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOFolder;->m_updateFlag:Ljava/lang/Boolean;

    return-void
.end method
