.class public Lcom/metamoji/sd/entities/SdMOUtils;
.super Ljava/lang/Object;
.source "SdMOUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 40
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    const/4 p2, 0x1

    .line 43
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 44
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {p1, p4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 48
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 49
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    const/4 p3, 0x0

    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 50
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {p1, p5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 52
    invoke-virtual {p1, p4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 53
    invoke-virtual {p1, p4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 55
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 56
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocument;->setTrashed(Ljava/lang/Boolean;)V

    .line 57
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocument;->setPriority(Ljava/lang/Boolean;)V

    .line 58
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocument;->setIsCopiedShareNote(Ljava/lang/Boolean;)V

    .line 59
    invoke-virtual {p1, p4}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    return-void
.end method

.method public static initializeMODrive(Lcom/metamoji/sd/entities/SdMODrive;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/entities/SdMODrive;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMODrive;->setId(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/entities/SdMODrive;->setLocalCacheId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMODrive;->setStatus(Ljava/lang/Integer;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMODrive;->setHidden(Ljava/lang/Integer;)V

    .line 160
    invoke-static {p0, p3}, Lcom/metamoji/sd/entities/SdMOUtils;->setDriveInfo(Lcom/metamoji/sd/entities/SdMODrive;Ljava/util/Map;)V

    return-void
.end method

.method public static initializeMOFolder(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/lang/String;)V
    .locals 3

    .line 83
    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 89
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    const/4 p2, 0x0

    .line 91
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 92
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 94
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static initializeMOPrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setUserId(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setStatus(Ljava/lang/Integer;)V

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setMerging(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static initializeMOTag(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMOTag;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 70
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMOTag;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 72
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 73
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setDriveInfo(Lcom/metamoji/sd/entities/SdMODrive;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/entities/SdMODrive;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 138
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setName(Ljava/lang/String;)V

    .line 139
    const-string v0, "isOwner"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setOwner(Ljava/lang/Boolean;)V

    .line 140
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setType(Ljava/lang/Integer;)V

    .line 141
    const-string v0, "groupName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setGroupName(Ljava/lang/String;)V

    .line 142
    const-string v0, "groupId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setGroupId(Ljava/lang/String;)V

    .line 143
    const-string v0, "groupOrder"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setGroupOrder(Ljava/lang/String;)V

    .line 144
    const-string v0, "order"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODrive;->setOrder(Ljava/lang/String;)V

    .line 145
    const-string v0, "hidden"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/entities/SdMODrive;->setHidden(Ljava/lang/Integer;)V

    return-void
.end method

.method public static setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V
    .locals 0

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 119
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setTrashed(Ljava/lang/Boolean;)V

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setPriority(Ljava/lang/Boolean;)V

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setIsCopiedShareNote(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V
    .locals 0

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setType(Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p1, p3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setData(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, p0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setLastUpdate(Ljava/util/Date;)V

    return-void
.end method
