.class public Lcom/metamoji/sd/entities/SdMODocument;
.super Lcom/metamoji/sd/entities/SdManagedObject;
.source "SdMODocument.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "SdMODocument"
.end annotation


# instance fields
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
        index = true
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
        index = true
    .end annotation
.end field

.field private m_contentsUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsUpdateFlag"
        index = true
    .end annotation
.end field

.field private m_contentsUpdateUserId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_contentsUpdateUserId"
    .end annotation
.end field

.field private m_copyFrom:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_copyFrom"
    .end annotation
.end field

.field private m_copyRevision:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_copyRevision"
    .end annotation
.end field

.field private m_deleteFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_deleteFlag"
        index = true
    .end annotation
.end field

.field private m_id:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_id"
        index = true
    .end annotation
.end field

.field private m_isCopiedShareNote:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_isCopiedShareNote"
        defaultValue = "0"
        index = true
    .end annotation
.end field

.field private m_lastAccess:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_lastAccess"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->DATE_LONG:Lcom/j256/ormlite/field/DataType;
        index = true
    .end annotation
.end field

.field private m_localOptions:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_localOptions"
        defaultValue = "0"
    .end annotation
.end field

.field private m_options:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_options"
        defaultValue = "0"
    .end annotation
.end field

.field private m_optionsOrigin:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_optionsOrigin"
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

.field private m_optionsUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_optionsUpdateFlag"
        defaultValue = "0"
        index = true
    .end annotation
.end field

.field private m_priority:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_priority"
        defaultValue = "0"
        index = true
    .end annotation
.end field

.field private m_tags:Lcom/j256/ormlite/dao/ForeignCollection;
    .annotation runtime Lcom/j256/ormlite/field/ForeignCollectionField;
        eager = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/metamoji/sd/entities/SdMODocumentTag;",
            ">;"
        }
    .end annotation
.end field

.field private m_tagsOrigin:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagsOrigin"
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

.field private m_tagsUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_tagsUpdateFlag"
        index = true
    .end annotation
.end field

.field private m_title:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_title"
        index = true
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

.field private m_titleUpdateFlag:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_titleUpdateFlag"
        index = true
    .end annotation
.end field

.field private m_trashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "f_trashed"
        defaultValue = "0"
        index = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/sd/entities/SdManagedObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentsAttribute()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsAttribute:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContentsCreate()Ljava/util/Date;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsCreate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsCreateUserId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsCreateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsMimeType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsRevision()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsUpdate()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContentsUpdateUserId()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyFrom()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_copyFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyRevision()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_copyRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteFlag()Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_deleteFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCopiedShareNote()Ljava/lang/Boolean;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_isCopiedShareNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastAccess()Ljava/util/Date;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getLocalOptions()Ljava/lang/Integer;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_localOptions:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOptions()Ljava/lang/Integer;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_options:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOptionsOrigin()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsOrigin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOptionsRevision()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionsUpdate()Ljava/util/Date;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getOptionsUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_priority:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTags()Lcom/j256/ormlite/dao/ForeignCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/metamoji/sd/entities/SdMODocumentTag;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tags:Lcom/j256/ormlite/dao/ForeignCollection;

    return-object v0
.end method

.method public getTagsOrigin()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsRevision()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getTagsUpdate()Ljava/util/Date;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getTagsUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRevision()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleUpdate()Ljava/util/Date;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getTitleUpdateFlag()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleUpdateFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrashed()Ljava/lang/Boolean;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_trashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setContentsAttribute(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsAttribute:Ljava/lang/Integer;

    return-void
.end method

.method public setContentsCreate(Ljava/util/Date;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsCreate:Ljava/util/Date;

    return-void
.end method

.method public setContentsCreateUserId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsCreateUserId:Ljava/lang/String;

    return-void
.end method

.method public setContentsMimeType(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsMimeType:Ljava/lang/String;

    return-void
.end method

.method public setContentsRevision(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsRevision:Ljava/lang/String;

    return-void
.end method

.method public setContentsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setContentsUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setContentsUpdateUserId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_contentsUpdateUserId:Ljava/lang/String;

    return-void
.end method

.method public setCopyFrom(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_copyFrom:Ljava/lang/String;

    return-void
.end method

.method public setCopyRevision(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_copyRevision:Ljava/lang/String;

    return-void
.end method

.method public setDeleteFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_deleteFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_id:Ljava/lang/String;

    return-void
.end method

.method public setIsCopiedShareNote(Ljava/lang/Boolean;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_isCopiedShareNote:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastAccess(Ljava/util/Date;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setLocalOptions(Ljava/lang/Integer;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_localOptions:Ljava/lang/Integer;

    return-void
.end method

.method public setOptions(Ljava/lang/Integer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_options:Ljava/lang/Integer;

    return-void
.end method

.method public setOptionsOrigin(Ljava/lang/Integer;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsOrigin:Ljava/lang/Integer;

    return-void
.end method

.method public setOptionsRevision(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsRevision:Ljava/lang/String;

    return-void
.end method

.method public setOptionsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setOptionsUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_optionsUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setPriority(Ljava/lang/Boolean;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_priority:Ljava/lang/Boolean;

    return-void
.end method

.method public setTags(Lcom/j256/ormlite/dao/ForeignCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/ForeignCollection<",
            "Lcom/metamoji/sd/entities/SdMODocumentTag;",
            ">;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tags:Lcom/j256/ormlite/dao/ForeignCollection;

    return-void
.end method

.method public setTagsOrigin(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsOrigin:Ljava/lang/String;

    return-void
.end method

.method public setTagsRevision(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsRevision:Ljava/lang/String;

    return-void
.end method

.method public setTagsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setTagsUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_tagsUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_title:Ljava/lang/String;

    return-void
.end method

.method public setTitleRevision(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleRevision:Ljava/lang/String;

    return-void
.end method

.method public setTitleUpdate(Ljava/util/Date;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleUpdate:Ljava/util/Date;

    return-void
.end method

.method public setTitleUpdateFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_titleUpdateFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public setTrashed(Ljava/lang/Boolean;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/metamoji/sd/entities/SdMODocument;->m_trashed:Ljava/lang/Boolean;

    return-void
.end method
