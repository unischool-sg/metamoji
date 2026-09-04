.class public Lcom/metamoji/sd/entities/SdMODocumentRoom;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODocumentRoom.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODocumentRoom"
.end annotation


# instance fields
.field private m_companyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_companyId"
        index = true
    .end annotation
.end field

.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
        index = true
    .end annotation
.end field

.field private m_lastSequence:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_lastSequence"
    .end annotation
.end field

.field private m_roomId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_roomId"
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
.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSequence()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_lastSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_companyId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setLastSequence(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_lastSequence:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentRoom;->m_roomId:Ljava/lang/String;

    return-void
.end method
