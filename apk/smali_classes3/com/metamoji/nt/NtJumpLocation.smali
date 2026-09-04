.class public Lcom/metamoji/nt/NtJumpLocation;
.super Lcom/metamoji/nt/NtLinkJump;
.source "NtJumpLocation.java"


# instance fields
.field private documentId:Ljava/lang/String;

.field private offset:Landroid/graphics/PointF;

.field private pageId:Ljava/lang/String;

.field private scale:F

.field private size:Lcom/metamoji/cm/SizeF;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 8

    .line 78
    const-string v0, ","

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtLinkJump;-><init>(Landroid/net/Uri;)V

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const-string v4, "pages"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v2, v3, :cond_1

    .line 83
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "notes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->documentId:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v5, :cond_2

    const/4 v2, 0x0

    .line 91
    iput-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->documentId:Ljava/lang/String;

    .line 92
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    .line 96
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 100
    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtJumpLocation;->setLinkJumpType(Lcom/metamoji/nt/NtLinkJump$Type;)V

    .line 101
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/nt/NtLinkJump$Type;->valueOf(I)Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtJumpLocation;->setLinkJumpType(Lcom/metamoji/nt/NtLinkJump$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 106
    iput v1, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    .line 107
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    :catchall_1
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    .line 113
    const-string v1, "offset"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 116
    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 117
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 118
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    :catchall_2
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v2, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    .line 122
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    aget-object v0, p1, v7

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 126
    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 127
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    return-void

    .line 97
    :cond_3
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "invalid uri: %s"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 9

    .line 61
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLinkJump$Type;->Page:Lcom/metamoji/nt/NtLinkJump$Type;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v4

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v5

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V
    .locals 1

    .line 68
    invoke-static/range {p1 .. p8}, Lcom/metamoji/nt/NtJumpLocation;->createURLWithLocation(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtLinkJump;-><init>(Landroid/net/Uri;)V

    .line 69
    iput-object p1, p0, Lcom/metamoji/nt/NtJumpLocation;->documentId:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    .line 71
    iput p4, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    .line 72
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p5, p6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    .line 73
    invoke-virtual {p0, p3}, Lcom/metamoji/nt/NtJumpLocation;->setLinkJumpType(Lcom/metamoji/nt/NtLinkJump$Type;)V

    .line 74
    new-instance p1, Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, p7, p8}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object p1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method static createURLWithLocation(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)Landroid/net/Uri;
    .locals 3

    .line 133
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 136
    const-string v1, "noteanytime"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz p0, :cond_0

    .line 138
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    :cond_0
    const-string p0, "pages"

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    invoke-virtual {p2}, Lcom/metamoji/nt/NtLinkJump$Type;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p3, p0

    if-eqz p0, :cond_1

    .line 143
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "scale"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const/4 p0, 0x0

    cmpl-float p1, p4, p0

    .line 145
    const-string p3, "%f,%f"

    if-nez p1, :cond_2

    cmpl-float p0, p5, p0

    if-eqz p0, :cond_3

    .line 146
    :cond_2
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "offset"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    :cond_3
    sget-object p0, Lcom/metamoji/nt/NtLinkJump$Type;->Link:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq p2, p0, :cond_4

    sget-object p0, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq p2, p0, :cond_4

    sget-object p0, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne p2, p0, :cond_5

    .line 149
    :cond_4
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "size"

    invoke-virtual {v0, p1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calc(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Integer;[FLandroid/graphics/PointF;Z)Landroid/graphics/RectF;
    .locals 9

    .line 256
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p5

    .line 257
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p5}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p5}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-direct {v0, v1, p5}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 261
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result p2

    .line 265
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result p1

    .line 269
    iget p5, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    .line 270
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 272
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    neg-float v3, v3

    iget v4, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    iget v5, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 274
    new-instance v3, Lcom/metamoji/cm/SizeF;

    iget v4, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    mul-float v5, p2, v4

    mul-float/2addr v4, p1

    invoke-direct {v3, v5, v4}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v4, v5, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v4, v5, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtLinkJump$Type;->Link:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v4, v5, :cond_2

    .line 279
    :cond_0
    iget-object v4, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 280
    iget p5, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v4, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p5, v4

    .line 281
    iget v4, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v5, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v4, v5

    cmpg-float v5, p5, v4

    .line 297
    iget-object v6, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    const/high16 v7, 0x40000000    # 2.0f

    if-gez v5, :cond_1

    .line 286
    iget v4, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p5

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v5, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v5, p5

    sub-float/2addr v0, v5

    div-float/2addr v0, v7

    sub-float/2addr v4, v0

    .line 289
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p5

    mul-float/2addr p2, p5

    .line 291
    iput p2, v3, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p1, p5

    .line 292
    iput p1, v3, Lcom/metamoji/cm/SizeF;->height:F

    div-float p1, v4, p5

    .line 293
    iput p1, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 297
    :cond_1
    iget p5, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr p5, v4

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v5, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    div-float/2addr v0, v7

    sub-float v0, p5, v0

    .line 300
    iget-object p5, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget p5, p5, Landroid/graphics/PointF;->y:F

    mul-float/2addr p5, v4

    mul-float/2addr p2, v4

    .line 301
    iput p2, v3, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p1, v4

    .line 302
    iput p1, v3, Lcom/metamoji/cm/SizeF;->height:F

    div-float p1, v0, v4

    .line 304
    iput p1, v1, Landroid/graphics/PointF;->x:F

    move v8, v4

    move v4, p5

    move p5, v8

    :goto_0
    neg-float p1, v0

    .line 306
    iput p1, v2, Landroid/graphics/PointF;->x:F

    neg-float p1, v4

    .line 307
    iput p1, v2, Landroid/graphics/PointF;->y:F

    :cond_2
    const/4 p1, 0x0

    .line 321
    aput p5, p3, p1

    .line 322
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iput p1, p4, Landroid/graphics/PointF;->x:F

    .line 323
    iget p1, v1, Landroid/graphics/PointF;->y:F

    iput p1, p4, Landroid/graphics/PointF;->y:F

    .line 324
    new-instance p1, Landroid/graphics/RectF;

    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget p3, v2, Landroid/graphics/PointF;->y:F

    iget p4, v2, Landroid/graphics/PointF;->x:F

    iget p5, v3, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p4, p5

    iget p5, v2, Landroid/graphics/PointF;->y:F

    iget v0, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p5, v0

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public calcTargetRect(FLcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v0

    .line 334
    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 336
    iget-object p2, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p2, p1

    .line 337
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    .line 338
    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v1, p1

    .line 339
    iget-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, p1

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, p1

    .line 342
    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p1

    .line 343
    iget v2, p2, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    div-float/2addr v2, v3

    mul-float/2addr v2, p1

    .line 344
    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    div-float/2addr p2, v3

    mul-float/2addr p1, p2

    move p2, v0

    move v0, v1

    move v1, v2

    move v2, p1

    .line 346
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    add-float/2addr v1, p2

    add-float/2addr v2, v0

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->documentId:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Landroid/graphics/PointF;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I
    .locals 4

    .line 173
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 175
    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
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

.method public getScale()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    return v0
.end method

.method public getSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public getTargetRect(Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;
    .locals 5

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v0

    .line 360
    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->Location:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/nt/NtLinkJump$Type;->ActiveLocation:Lcom/metamoji/nt/NtLinkJump$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 363
    iget-object p1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 364
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 365
    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 366
    iget-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 371
    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 372
    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    div-float/2addr v2, v3

    .line 373
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    div-float/2addr p1, v3

    move v4, v2

    move v2, p1

    move p1, v0

    move v0, v1

    move v1, v4

    .line 375
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v1, p1

    add-float/2addr v2, v0

    invoke-direct {v3, p1, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public hasMemoryLocation(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 163
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtJumpLocation;->getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method pageLinkJumpByReplacingDocument(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;
    .locals 9

    .line 192
    new-instance v0, Lcom/metamoji/nt/NtJumpLocation;

    iget-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v3

    iget v4, p0, Lcom/metamoji/nt/NtJumpLocation;->scale:F

    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->offset:Landroid/graphics/PointF;

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v1, p0, Lcom/metamoji/nt/NtJumpLocation;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v1, Lcom/metamoji/cm/SizeF;->height:F

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtJumpLocation;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    return-object v0
.end method

.method public performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;Z)Z

    move-result p1

    return p1
.end method

.method public performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;Z)Z
    .locals 10

    .line 202
    iget-object v2, p0, Lcom/metamoji/nt/NtJumpLocation;->pageId:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v2, :cond_0

    return v6

    .line 206
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/nt/NtJumpLocation;->getPageIndexByPageId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteController;)I

    move-result v7

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/nt/NtJumpLocation;->showJumpErrorDialog()V

    return v6

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v8

    if-nez v8, :cond_2

    return v6

    :cond_2
    if-nez p3, :cond_3

    .line 220
    new-instance v2, Lcom/metamoji/nt/NtJumpLocation;

    invoke-direct {v2, v8}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Lcom/metamoji/nt/NtPageController;)V

    .line 221
    invoke-virtual {v2}, Lcom/metamoji/nt/NtJumpLocation;->toURLString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtNoteController;->setJumpBackLink(Ljava/lang/String;)V

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-ne v7, v2, :cond_4

    move v2, v3

    .line 227
    new-array v3, v9, [F

    aput v2, v3, v6

    .line 229
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v4, v2

    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtJumpLocation;->calc(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Integer;[FLandroid/graphics/PointF;Z)Landroid/graphics/RectF;

    .line 231
    aget v0, v3, v6

    invoke-virtual {v8, v0, v9}, Lcom/metamoji/nt/NtPageController;->setZoom(FZ)V

    .line 232
    invoke-virtual {v8, v4, v6}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 235
    new-array v3, v9, [F

    aput v2, v3, v6

    .line 237
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 238
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtJumpLocation;->calc(Lcom/metamoji/nt/NtNoteController;Ljava/lang/Integer;[FLandroid/graphics/PointF;Z)Landroid/graphics/RectF;

    .line 242
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 243
    const-string v1, "pageIndex"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    aget v1, v3, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "zoom"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    const-string v1, "offset"

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :goto_0
    return v9
.end method
