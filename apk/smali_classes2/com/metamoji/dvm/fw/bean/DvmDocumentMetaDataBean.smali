.class public Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;
.super Lcom/metamoji/dvm/fw/bean/DvmBean;
.source "DvmDocumentMetaDataBean.java"


# instance fields
.field private m_contentsAttribute:I

.field private m_contentsCreate:Ljava/util/Date;

.field private m_contentsCreateUserId:Ljava/lang/String;

.field private m_contentsMimeType:Ljava/lang/String;

.field private m_contentsRevision:Ljava/lang/String;

.field private m_contentsUpdate:Ljava/util/Date;

.field private m_contentsUpdateFlag:Z

.field private m_contentsUpdateUserId:Ljava/lang/String;

.field private m_docId:Ljava/lang/String;

.field private m_options:I

.field private m_optionsUpdateFlag:Z

.field private m_tagsUpdateFlag:Z

.field private m_title:Ljava/lang/String;

.field private m_titleUpdateFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/entities/SdMODocument;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/bean/DvmBean;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_docId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_title:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsMimeType:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreate:Ljava/util/Date;

    .line 29
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdate:Ljava/util/Date;

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsRevision:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_titleUpdateFlag:Z

    .line 32
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_tagsUpdateFlag:Z

    .line 33
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateFlag:Z

    .line 35
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_optionsUpdateFlag:Z

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreateUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreateUserId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateUserId:Ljava/lang/String;

    return-void
.end method

.method public static getTitle(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 156
    const-string v0, "title"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isCopiedShare(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 148
    const-string v0, "options"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static isProtected(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTrashed(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 136
    const-string v0, "options"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-lez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method


# virtual methods
.method public getContentsAttribute()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    return v0
.end method

.method public getContentsCreate()Ljava/util/Date;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsCreateUserId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsMimeType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsRevision()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsUpdate()Ljava/util/Date;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getContentsUpdateFlag()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateFlag:Z

    return v0
.end method

.method public getContentsUpdateUserId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_docId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    return v0
.end method

.method public getOptionsUpdateFlag()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_optionsUpdateFlag:Z

    return v0
.end method

.method public getTagsUpdateFlag()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_tagsUpdateFlag:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleUpdateFlag()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_titleUpdateFlag:Z

    return v0
.end method

.method public hasOfflineLayer()Z
    .locals 1

    .line 177
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    and-int/lit16 v0, v0, 0x800

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVoice()Z
    .locals 1

    .line 170
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCopiedShare()Z
    .locals 1

    .line 144
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDisplayPriority()Z
    .locals 1

    .line 208
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProtected()Z
    .locals 2

    .line 118
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShareTemplate()Z
    .locals 2

    .line 163
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTemplate()Z
    .locals 1

    .line 125
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrashed()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWaitingSync()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_titleUpdateFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_tagsUpdateFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateFlag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_optionsUpdateFlag:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public normalizedContentsCreateUserId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsRevision:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "-1"

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public normalizedContentsUpdateUserId()Ljava/lang/String;
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateFlag:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "-1"

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setContentsAttribute(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsAttribute:I

    return-void
.end method

.method public setContentsCreate(Ljava/util/Date;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreate:Ljava/util/Date;

    return-void
.end method

.method public setContentsCreateUserId(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsCreateUserId:Ljava/lang/String;

    return-void
.end method

.method public setContentsMimeType(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsMimeType:Ljava/lang/String;

    return-void
.end method

.method public setContentsRevision(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsRevision:Ljava/lang/String;

    return-void
.end method

.method public setContentsUpdate(Ljava/util/Date;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdate:Ljava/util/Date;

    return-void
.end method

.method public setContentsUpdateFlag(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateFlag:Z

    return-void
.end method

.method public setContentsUpdateUserId(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_contentsUpdateUserId:Ljava/lang/String;

    return-void
.end method

.method public setDocId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_docId:Ljava/lang/String;

    return-void
.end method

.method public setOptions(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_options:I

    return-void
.end method

.method public setOptionsUpdateFlag(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_optionsUpdateFlag:Z

    return-void
.end method

.method public setTagsUpdateFlag(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_tagsUpdateFlag:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_title:Ljava/lang/String;

    return-void
.end method

.method public setTitleUpdateFlag(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->m_titleUpdateFlag:Z

    return-void
.end method
