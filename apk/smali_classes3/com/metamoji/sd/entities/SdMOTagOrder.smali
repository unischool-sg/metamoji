.class public Lcom/metamoji/sd/entities/SdMOTagOrder;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOTagOrder.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOTagOrder"
.end annotation


# instance fields
.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
        index = true
    .end annotation
.end field

.field private m_revision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_revision"
    .end annotation
.end field

.field private m_tagOrder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagOrder"
    .end annotation
.end field

.field private m_tagOrderOrigin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagOrderOrigin"
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
.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_revision:Ljava/lang/String;

    return-object v0
.end method

.method public getTagOrder()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_tagOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getTagOrderOrigin()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_tagOrderOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_update:Ljava/util/Date;

    return-object v0
.end method

.method public getUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_updateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_revision:Ljava/lang/String;

    return-void
.end method

.method public setTagOrder(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_tagOrder:Ljava/lang/String;

    return-void
.end method

.method public setTagOrderOrigin(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_tagOrderOrigin:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/util/Date;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_update:Ljava/util/Date;

    return-void
.end method

.method public setUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOTagOrder;->m_updateFlag:Ljava/lang/Boolean;

    return-void
.end method
