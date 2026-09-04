.class public Lcom/metamoji/sd/entities/SdMODocumentSearchData;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODocumentSearchData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODocumentSearchData"
.end annotation


# instance fields
.field private m_data:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_data"
    .end annotation
.end field

.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
        index = true
    .end annotation
.end field

.field private m_lastUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_lastUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
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

    .line 15
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_data:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_lastUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_data:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdate(Ljava/util/Date;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_lastUpdate:Ljava/util/Date;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->m_type:Ljava/lang/Integer;

    return-void
.end method
