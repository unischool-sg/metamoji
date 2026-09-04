.class public Lcom/metamoji/nt/NtLinkJumpManager;
.super Ljava/lang/Object;
.source "NtLinkJumpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;,
        Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;
    }
.end annotation


# static fields
.field public static final MMJNT_MODELPROP_LINKJUMPS_KEY_THUMBMODEL:Ljava/lang/String; = "thumbM"

.field public static final MMJNT_MODELPROP_LINKJUMPS_KEY_THUMBNAIL:Ljava/lang/String; = "thumb"

.field public static final MMJNT_MODELPROP_LINKJUMPS_KEY_URL:Ljava/lang/String; = "url"

.field public static final MMJNT_MODELPROP_LINKJUMPS_LINKJUMPS:Ljava/lang/String; = "linkjumps"

.field public static final MMJNT_MODELPROP_LINKJUMPS_THUMBMODEL_VALUE:Ljava/lang/String; = "v"


# instance fields
.field private m_links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;"
        }
    .end annotation
.end field

.field private m_listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_modified:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_listeners:Ljava/util/ArrayList;

    return-void
.end method

.method private loadPageDataArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    sget-object v1, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->LOCATION:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private loadPageDataArrayWithUrlData(Lcom/metamoji/nt/NtLinkJump;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtLinkJump;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArray()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 434
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLinkJump;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v2, v3, :cond_2

    .line 437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 439
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 442
    const-string v4, "partsArray"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 446
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 447
    const-string v6, "jump_linkobj"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 448
    instance-of v6, v6, Lcom/metamoji/nt/NtLinkJump;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    if-nez v5, :cond_2

    .line 455
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtLinkJump;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 456
    invoke-static {p1, v2}, Lcom/metamoji/nt/NtLinkJumpManager;->translateToPartData(Lcom/metamoji/nt/NtLinkJump;I)Ljava/util/Map;

    move-result-object v4

    .line 457
    invoke-interface {v3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 465
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLinkJump;->getLinkJumpType()Lcom/metamoji/nt/NtLinkJump$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    if-eq v2, v3, :cond_4

    :cond_3
    move-object p1, v1

    .line 468
    :cond_4
    sget-object v2, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->URL:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;

    move-result-object p1

    .line 469
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object p1, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->NONE:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;

    move-result-object p1

    .line 473
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private moveLastTo(Lcom/metamoji/nt/NtJumpLocation;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtJumpLocation;

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtLinkJumpManager;->moveTo(Lcom/metamoji/nt/NtJumpLocation;Lcom/metamoji/nt/NtJumpLocation;)V

    return v2
.end method

.method private notifySizeChanged()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;

    invoke-interface {v1}, Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;->sizeChanged()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private savePageDataArray(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, v0, :cond_9

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 372
    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    const-string v3, "linkjump_type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->valueOf(I)Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    move-result-object v3

    .line 382
    sget-object v4, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->LOCATION:Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 386
    :cond_3
    const-string v3, "partsArray"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 391
    :cond_4
    check-cast v0, Ljava/util/List;

    .line 392
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 394
    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 395
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 399
    :cond_6
    const-string v4, "jump_linkobj"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 403
    :cond_7
    check-cast v3, Lcom/metamoji/nt/NtJumpLocation;

    if-nez v1, :cond_8

    .line 405
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 407
    :cond_8
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_1

    :cond_9
    if-nez v1, :cond_a

    if-eqz p2, :cond_a

    .line 415
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 417
    :cond_a
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method private setModified()V
    .locals 2

    .line 146
    iget-boolean v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 149
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    return-void
.end method

.method static translateToNone()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 547
    const-string v1, "entityId"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static translateToPartData(Lcom/metamoji/nt/NtLinkJump;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtLinkJump;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    const-string v1, "entityId"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object p1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string p1, "jump_linkobj"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static translateToURLData(Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtLinkJump;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 536
    const-string v1, "entityId"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 539
    const-string v1, "jump_linkobj"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addLink(Lcom/metamoji/nt/NtJumpLocation;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->notifySizeChanged()V

    .line 155
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public addListener(Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    return-object v0
.end method

.method public hasLink()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public insertBackLink(Lcom/metamoji/nt/NtJumpLocation;I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public isModified()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    return v0
.end method

.method public loadFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    const-string v0, "linkjumps"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 263
    check-cast v0, Ljava/util/Map;

    .line 267
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtLinkJump;->linkJumpWithURLString(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 275
    const-string/jumbo v3, "thumbM"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 276
    instance-of v4, v3, Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_1

    .line 277
    move-object v2, v3

    check-cast v2, Lcom/metamoji/df/model/IModel;

    :cond_1
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtJumpLocation;->setThumbModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 283
    :cond_2
    const-string/jumbo v2, "thumb"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    instance-of v2, v0, Lcom/metamoji/cm/Blob;

    if-eqz v2, :cond_3

    .line 285
    check-cast v0, Lcom/metamoji/cm/Blob;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtJumpLocation;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    .line 289
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->notifySizeChanged()V

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    return-void
.end method

.method loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;

    move-result-object p1

    .line 490
    const-string v1, "partsArray"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 494
    :cond_0
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method loadPageDataArrayByType(Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;",
            "Lcom/metamoji/nt/NtLinkJump;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtLinkJump;

    .line 504
    invoke-static {v3, v2}, Lcom/metamoji/nt/NtLinkJumpManager;->translateToPartData(Lcom/metamoji/nt/NtLinkJump;I)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p2

    goto :goto_0

    .line 509
    :cond_1
    invoke-static {p2}, Lcom/metamoji/nt/NtLinkJumpManager;->translateToURLData(Lcom/metamoji/nt/NtLinkJump;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 517
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_USER:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "partsArray"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLinkJumpManager$LinkJumpType;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "linkjump_type"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method loadPageDataArrayWithUrlString(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 482
    invoke-static {p1}, Lcom/metamoji/nt/NtLinkJump;->linkJumpWithURLString(Ljava/lang/String;)Lcom/metamoji/nt/NtJumpLocation;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 484
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtLinkJumpManager;->loadPageDataArrayWithUrlData(Lcom/metamoji/nt/NtLinkJump;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public moveTo(Lcom/metamoji/nt/NtJumpLocation;Lcom/metamoji/nt/NtJumpLocation;)V
    .locals 6

    if-ne p1, p2, :cond_0

    goto :goto_3

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/NtLinkJump;

    if-ne v5, p1, :cond_1

    move v3, v2

    :cond_1
    if-ne v5, p2, :cond_2

    move v4, v2

    :cond_2
    if-eq v3, v1, :cond_3

    if-eq v4, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eq v4, v1, :cond_7

    if-ne v3, v1, :cond_5

    goto :goto_3

    .line 221
    :cond_5
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    if-ge v3, v4, :cond_6

    .line 218
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 221
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 224
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    :cond_7
    :goto_3
    return-void
.end method

.method public purgeModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const/4 v0, 0x0

    .line 336
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    .line 337
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtLinkJump;

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLinkJump;->getThumbModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 340
    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLink(Lcom/metamoji/nt/NtLinkJump;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->notifySizeChanged()V

    .line 184
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public removeLinks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLinkJump;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 197
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->notifySizeChanged()V

    .line 198
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public removeListener(Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public replaceLink(Lcom/metamoji/nt/NtJumpLocation;I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->notifySizeChanged()V

    .line 171
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public saveLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtJumpLocation;",
            ">;)V"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    .line 422
    invoke-direct {p0}, Lcom/metamoji/nt/NtLinkJumpManager;->setModified()V

    return-void
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    const/4 v0, 0x2

    .line 303
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    iget-object v1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_links:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 306
    instance-of v3, v2, Lcom/metamoji/nt/NtLinkJump;

    if-eqz v3, :cond_0

    .line 307
    check-cast v2, Lcom/metamoji/nt/NtLinkJump;

    .line 308
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 311
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLinkJump;->toURLString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 313
    const-string/jumbo v5, "url"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtLinkJump;->readyThumbModelWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 319
    const-string/jumbo v4, "thumbM"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_3
    const-string v1, "linkjumps"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setModified(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/metamoji/nt/NtLinkJumpManager;->m_modified:Z

    return-void
.end method
