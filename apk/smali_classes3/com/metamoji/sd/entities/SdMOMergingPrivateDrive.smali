.class public Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOMergingPrivateDrive.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOMergingPrivateDrive"
.end annotation


# instance fields
.field private m_destId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_destId"
    .end annotation
.end field

.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
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
.method public getDestId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->m_destId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDestId(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->m_destId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->m_id:Ljava/lang/String;

    return-void
.end method
