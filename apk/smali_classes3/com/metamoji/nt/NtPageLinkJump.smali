.class public Lcom/metamoji/nt/NtPageLinkJump;
.super Lcom/metamoji/nt/NtLinkJump;
.source "NtPageLinkJump.java"


# instance fields
.field m_documentID:Ljava/lang/String;

.field m_offset:Landroid/graphics/PointF;

.field m_pageID:Ljava/lang/String;

.field m_scale:F


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 9

    .line 56
    const-string v0, "pages"

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtLinkJump;-><init>(Landroid/net/Uri;)V

    .line 61
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    const/4 v2, 0x0

    .line 64
    :try_start_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "UTF-8"

    if-eqz v6, :cond_0

    .line 66
    :try_start_1
    iput-object v2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_documentID:Ljava/lang/String;

    .line 67
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_0
    const-string v6, "notes"

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_documentID:Ljava/lang/String;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x4

    if-lt v6, v8, :cond_1

    .line 72
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 80
    iput-object v2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    iput v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_scale:F

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->parseURLQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 91
    const-string/jumbo v0, "scale"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 93
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_scale:F

    .line 99
    :cond_2
    const-string v0, "offset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 101
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 102
    array-length v0, p1

    if-ne v0, v5, :cond_3

    .line 104
    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    aget-object p1, p1, v3

    .line 105
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->extractDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 108
    iget-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/nt/NtPageLinkJump;-><init>(Ljava/lang/String;FLandroid/graphics/PointF;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FLandroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/metamoji/nt/NtPageLinkJump;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/PointF;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/PointF;)V
    .locals 2

    .line 37
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    invoke-static {p1, p2, p3, v0, v1}, Lcom/metamoji/nt/NtPageLinkJump;->createURLWithLocation(Ljava/lang/String;Ljava/lang/String;FFF)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtLinkJump;-><init>(Landroid/net/Uri;)V

    .line 38
    iput-object p1, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_documentID:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_scale:F

    .line 41
    iput-object p4, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    return-void
.end method

.method static createURLWithLocation(Ljava/lang/String;Ljava/lang/String;FFF)Landroid/net/Uri;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "noteanytime:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 129
    const-string v1, "notes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    const-string p0, "pages/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 145
    const-string/jumbo p1, "scale="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string p1, "&"

    goto :goto_0

    .line 142
    :cond_1
    const-string p1, ""

    :goto_0
    const/4 p2, 0x0

    cmpl-float v1, p3, p2

    if-nez v1, :cond_2

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string p1, "offset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 164
    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;
    .locals 1

    .line 172
    sget-object v0, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    return-object v0
.end method

.method getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I
    .locals 4

    .line 262
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 264
    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result p1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public hasMemoryLocation(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageLinkJump;->getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method pageLinkJumpByReplacingDocument(Ljava/lang/String;)Lcom/metamoji/nt/NtPageLinkJump;
    .locals 6

    .line 194
    new-instance v0, Lcom/metamoji/nt/NtPageLinkJump;

    iget-object v1, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    iget v2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_scale:F

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/metamoji/nt/NtPageLinkJump;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/graphics/PointF;)V

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageLinkJump;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPageLinkJump;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    return-object v0
.end method

.method public performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_pageID:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/nt/NtPageLinkJump;->getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageLinkJump;->showJumpErrorDialog()V

    return v1

    .line 225
    :cond_2
    new-instance v3, Lcom/metamoji/nt/NtPageLinkJump;

    invoke-direct {v3, v0}, Lcom/metamoji/nt/NtPageLinkJump;-><init>(Lcom/metamoji/nt/NtPageController;)V

    .line 226
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageLinkJump;->toURLString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->setJumpBackLink(Ljava/lang/String;)V

    .line 235
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 237
    const-string v0, "pageIndex"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    iget v0, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_scale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v2, "zoom"

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    const-string v0, "offset"

    iget-object v2, p0, Lcom/metamoji/nt/NtPageLinkJump;->m_offset:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 242
    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
