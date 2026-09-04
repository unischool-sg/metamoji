.class public Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODiscardedPrivateDrive.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODiscardedPrivateDrive"
.end annotation


# instance fields
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
.method public getId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;->m_id:Ljava/lang/String;

    return-void
.end method
