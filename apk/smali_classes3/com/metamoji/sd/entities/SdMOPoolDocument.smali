.class public Lcom/metamoji/sd/entities/SdMOPoolDocument;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMOPoolDocument.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMOPoolDocument"
.end annotation


# instance fields
.field private m_companyId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_companyId"
    .end annotation
.end field

.field private m_contentsAttribute:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsAttribute"
        defaultValue = "0"
    .end annotation
.end field

.field private m_contentsCreate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsCreate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private m_contentsCreateUserId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsCreateUserId"
    .end annotation
.end field

.field private m_contentsMimeType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsMimeType"
    .end annotation
.end field

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

.field private m_contentsUpdateUserId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsUpdateUserId"
    .end annotation
.end field

.field private m_deleteFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_deleteFlag"
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

.field private m_options:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_options"
        defaultValue = "0"
    .end annotation
.end field

.field private m_optionsRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_optionsRevision"
    .end annotation
.end field

.field private m_optionsUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_optionsUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        defaultValue = "1388534400"
    .end annotation
.end field

.field private m_roomId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_roomId"
    .end annotation
.end field

.field private m_searchData:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_searchData"
    .end annotation
.end field

.field private m_tags:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tags"
    .end annotation
.end field

.field private m_tagsRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagsRevision"
    .end annotation
.end field

.field private m_tagsUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagsUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private m_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_title"
    .end annotation
.end field

.field private m_titleRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_titleRevision"
    .end annotation
.end field

.field private m_titleUpdate:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_titleUpdate"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
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
.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsAttribute()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsAttribute:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentsCreate()Ljava/util/Date;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsCreate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsCreateUserId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsCreateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsMimeType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsRevision()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsUpdate()Ljava/util/Date;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsUpdateUserId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsUpdateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFlag()Ljava/lang/Boolean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_deleteFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSequence()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_lastSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/Integer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_options:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOptionsRevision()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_optionsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionsUpdate()Ljava/util/Date;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_optionsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchData()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_searchData:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsRevision()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tagsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsUpdate()Ljava/util/Date;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tagsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRevision()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_titleRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleUpdate()Ljava/util/Date;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_titleUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_companyId:Ljava/lang/String;

    return-void
.end method

.method public setContentsAttribute(Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsAttribute:Ljava/lang/Integer;

    return-void
.end method

.method public setContentsCreate(Ljava/util/Date;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsCreate:Ljava/util/Date;

    return-void
.end method

.method public setContentsCreateUserId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsCreateUserId:Ljava/lang/String;

    return-void
.end method

.method public setContentsMimeType(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsMimeType:Ljava/lang/String;

    return-void
.end method

.method public setContentsRevision(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsRevision:Ljava/lang/String;

    return-void
.end method

.method public setContentsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setContentsUpdateUserId(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_contentsUpdateUserId:Ljava/lang/String;

    return-void
.end method

.method public setDeleteFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_deleteFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setLastSequence(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_lastSequence:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/Integer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_options:Ljava/lang/Integer;

    return-void
.end method

.method public setOptionsRevision(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_optionsRevision:Ljava/lang/String;

    return-void
.end method

.method public setOptionsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_optionsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_roomId:Ljava/lang/String;

    return-void
.end method

.method public setSearchData(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_searchData:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tags:Ljava/lang/String;

    return-void
.end method

.method public setTagsRevision(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tagsRevision:Ljava/lang/String;

    return-void
.end method

.method public setTagsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_tagsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_title:Ljava/lang/String;

    return-void
.end method

.method public setTitleRevision(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_titleRevision:Ljava/lang/String;

    return-void
.end method

.method public setTitleUpdate(Ljava/util/Date;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMOPoolDocument;->m_titleUpdate:Ljava/util/Date;

    return-void
.end method
