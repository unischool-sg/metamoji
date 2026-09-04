.class public Lcom/metamoji/sd/entities/SdMODocumentTag;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODocumentTag.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODocumentTag"
.end annotation


# instance fields
.field private m_document:Lcom/metamoji/sd/entities/SdMODocument;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tags"
        foreign = true
        index = true
    .end annotation
.end field

.field private m_name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_name"
        index = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_document:Lcom/metamoji/sd/entities/SdMODocument;

    .line 20
    iput-object p2, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocument()Lcom/metamoji/sd/entities/SdMODocument;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_document:Lcom/metamoji/sd/entities/SdMODocument;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDocument(Lcom/metamoji/sd/entities/SdMODocument;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_document:Lcom/metamoji/sd/entities/SdMODocument;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocumentTag;->m_name:Ljava/lang/String;

    return-void
.end method
