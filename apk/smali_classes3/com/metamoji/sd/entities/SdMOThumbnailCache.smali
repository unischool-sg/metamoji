.class public Lcom/metamoji/sd/entities/SdMOThumbnailCache;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOThumbnailCache.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOThumbnailCache"
.end annotation


# instance fields
.field private m_contentsRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsRevision"
    .end annotation
.end field

.field private m_contentsUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private m_documentId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_documentId"
        index = true
    .end annotation
.end field

.field private m_nothingFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_nothingFlag"
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
.method public getContentsRevision()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_contentsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsUpdate()Ljava/util/Date;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_contentsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_documentId:Ljava/lang/String;

    return-object v0
.end method

.method public getNothingFlag()Ljava/lang/Boolean;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_nothingFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setContentsRevision(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_contentsRevision:Ljava/lang/String;

    return-void
.end method

.method public setContentsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_contentsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setDocumentId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_documentId:Ljava/lang/String;

    return-void
.end method

.method public setNothingFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->m_nothingFlag:Ljava/lang/Boolean;

    return-void
.end method
