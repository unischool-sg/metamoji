.class public Lcom/metamoji/dvm/DvmDocumentSearchConditions;
.super Ljava/lang/Object;
.source "DvmDocumentSearchConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
    }
.end annotation


# instance fields
.field private m_createFrom:Ljava/util/Date;

.field private m_createTo:Ljava/util/Date;

.field private m_hasOfflineLayer:Z

.field private m_hasVoice:Z

.field private m_includeSystemFile:Z

.field private m_mimeType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_onlyFolderTag:Z

.field private m_searchDomainMask:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field private m_sort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/sd/SdSortCondition;",
            ">;"
        }
    .end annotation
.end field

.field private m_tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_title:Ljava/lang/String;

.field private m_updateFrom:Ljava/util/Date;

.field private m_updateTo:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    iput-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_searchDomainMask:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_onlyFolderTag:Z

    .line 46
    iput-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_includeSystemFile:Z

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasVoice:Z

    .line 48
    iput-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasOfflineLayer:Z

    return-void
.end method


# virtual methods
.method public getCreateFrom()Ljava/util/Date;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_createFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getCreateTo()Ljava/util/Date;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_createTo:Ljava/util/Date;

    return-object v0
.end method

.method public getHasOfflineLayer()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasOfflineLayer:Z

    return v0
.end method

.method public getHasVoice()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasVoice:Z

    return v0
.end method

.method public getIncludeSystemFile()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_includeSystemFile:Z

    return v0
.end method

.method public getMimeType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_mimeType:Ljava/util/List;

    return-object v0
.end method

.method public getOnlyFolderTag()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_onlyFolderTag:Z

    return v0
.end method

.method public getSearchDomainMask()Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_searchDomainMask:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    return-object v0
.end method

.method public getSort()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/SdSortCondition;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_sort:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFrom()Ljava/util/Date;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_updateFrom:Ljava/util/Date;

    return-object v0
.end method

.method public getUpdateTo()Ljava/util/Date;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_updateTo:Ljava/util/Date;

    return-object v0
.end method

.method public setCreateFrom(Ljava/util/Date;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_createFrom:Ljava/util/Date;

    return-void
.end method

.method public setCreateTo(Ljava/util/Date;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_createTo:Ljava/util/Date;

    return-void
.end method

.method public setHasOfflineLayer(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasOfflineLayer:Z

    return-void
.end method

.method public setHasVoice(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_hasVoice:Z

    return-void
.end method

.method public setIncludeSystemFile(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_includeSystemFile:Z

    return-void
.end method

.method public setMimeType(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_mimeType:Ljava/util/List;

    return-void
.end method

.method public setOnlyFolderTag(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_onlyFolderTag:Z

    return-void
.end method

.method public setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_searchDomainMask:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    return-void
.end method

.method public setSort(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/sd/SdSortCondition;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_sort:Ljava/util/List;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_tags:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_title:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFrom(Ljava/util/Date;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_updateFrom:Ljava/util/Date;

    return-void
.end method

.method public setUpdateTo(Ljava/util/Date;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->m_updateTo:Ljava/util/Date;

    return-void
.end method
