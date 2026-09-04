.class public Lcom/metamoji/nt/NtMRUDocList;
.super Ljava/lang/Object;
.source "NtMRUDocList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtMRUDocList$Item;,
        Lcom/metamoji/nt/NtMRUDocList$MinItem;,
        Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;,
        Lcom/metamoji/nt/NtMRUDocList$FeedFrom;,
        Lcom/metamoji/nt/NtMRUDocList$DocInfo;,
        Lcom/metamoji/nt/NtMRUDocList$ItemBase;
    }
.end annotation


# static fields
.field public static final MAX_COUNT:I = 0x15

.field private static sInstance:Lcom/metamoji/nt/NtMRUDocList;


# instance fields
.field private mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

.field private mDirty:Z

.field private mEventListeners:Lcom/metamoji/ui/UiEventListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/ui/UiEventListeners<",
            "Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTabCount:I

.field private mMruList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtMRUDocList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mTabCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentSelection(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventListeners(Lcom/metamoji/nt/NtMRUDocList;)Lcom/metamoji/ui/UiEventListeners;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSelection(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddOneDocument(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/nt/NtMRUDocList;->addOneDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcleanupDocList(Lcom/metamoji/nt/NtMRUDocList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->cleanupDocList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireMruItemOpenEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemOpenEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->fireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msave(Lcom/metamoji/nt/NtMRUDocList;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->save()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    .line 455
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    const/4 v0, 0x1

    .line 456
    iput v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mTabCount:I

    .line 457
    iput v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMaxTabCount:I

    .line 458
    new-instance v0, Lcom/metamoji/ui/UiEventListeners;

    invoke-direct {v0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    return-void
.end method

.method private addOneDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 10

    .line 1083
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1085
    invoke-virtual {p0, p3}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndexBySrcid(Ljava/lang/String;)I

    move-result v0

    .line 1119
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_7

    .line 1089
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1091
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeDocId(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1094
    iput-boolean v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 1096
    :cond_1
    invoke-virtual {v0, p1, p3}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeSrcDocId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1097
    iput-boolean v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 1101
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    if-eq p5, p1, :cond_6

    .line 1103
    invoke-virtual {v0, p4}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeRO(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1104
    iget-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1105
    invoke-direct {p0, p0, v0, v2}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemStatusChangeEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    .line 1107
    :cond_3
    iput-boolean v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 1110
    :cond_4
    sget-object p1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    if-ne p5, p1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeOpenFromState(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1111
    iput-boolean v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    :cond_6
    return-object v0

    .line 1119
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 1120
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->removeLeastImportantItem()V

    .line 1123
    :cond_8
    new-instance v4, Lcom/metamoji/nt/NtMRUDocList$Item;

    sget-object v0, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    if-ne p5, v0, :cond_9

    move v9, v3

    goto :goto_0

    :cond_9
    move v9, v2

    :goto_0
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/nt/NtMRUDocList$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1124
    iget-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {p1, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1126
    iget-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1127
    invoke-direct {p0, p0, v4}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemAppendEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    .line 1129
    :cond_a
    iput-boolean v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    return-object v4
.end method

.method private cleanupDocList()V
    .locals 9

    .line 1006
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_0
    if-ltz v0, :cond_5

    .line 1011
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v6

    .line 1013
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->hasLocalId()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1014
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v7

    .line 1016
    invoke-static {v2, v7}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 1018
    :cond_0
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->has2WayId()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1020
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/dvm/DvmUtil;->isHiddenDrive(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1022
    :cond_1
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->srcDocId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 1038
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/dvm/DvmUtil;->isHiddenDrive(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 1040
    :cond_3
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1047
    :goto_1
    iget-object v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    .line 1050
    invoke-virtual {v6}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v5

    move v3, v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    .line 1054
    iput-boolean v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 1055
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v4, v1, :cond_6

    move-object v2, v5

    .line 1056
    :cond_6
    invoke-direct {p0, p0, v2}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemDeleteEvent(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private fireMruItemAppendEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 627
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruItemAppended(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireMruItemDeleteEvent(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 639
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 640
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruItemDeleted(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireMruItemMoveEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 653
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruItemMoved(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireMruItemOpenEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 614
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruItemOpened(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireMruItemStatusChangeEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V
    .locals 4

    .line 664
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 665
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 666
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2, p3}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruItemStatusChanged(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Z)V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->beginInvoke()Ljava/util/List;

    move-result-object v0

    .line 679
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 680
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;->onMruMultiItemEvent(Lcom/metamoji/nt/NtMRUDocList;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/NtMRUDocList;
    .locals 2

    .line 469
    sget-object v0, Lcom/metamoji/nt/NtMRUDocList;->sInstance:Lcom/metamoji/nt/NtMRUDocList;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList;

    invoke-direct {v0}, Lcom/metamoji/nt/NtMRUDocList;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtMRUDocList;->sInstance:Lcom/metamoji/nt/NtMRUDocList;

    const/4 v1, 0x1

    .line 471
    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtMRUDocList;->load(Z)V

    .line 473
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtMRUDocList;->sInstance:Lcom/metamoji/nt/NtMRUDocList;

    return-object v0
.end method

.method private load(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 961
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    const/4 v0, 0x0

    .line 962
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    .line 964
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "MMjNtMRUDocList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 966
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 967
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 968
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/metamoji/nt/NtMRUDocList$Item;->fromDictionary(Ljava/util/Map;)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 970
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 975
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->cleanupDocList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 979
    const-string v0, "load mru list error."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 980
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    return-void
.end method

.method private removeLeastImportantItem()V
    .locals 4

    .line 1065
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1070
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 1071
    iget-object v3, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1072
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemDeleteEvent(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V

    .line 1075
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    return-void
.end method

.method private save()V
    .locals 3

    .line 988
    iget-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    if-nez v0, :cond_0

    return-void

    .line 991
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 992
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 993
    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->toDictionary()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 995
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 999
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const-string v2, "MMjNtMRUDocList"

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;)V
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addUsedDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V
    .locals 8

    .line 777
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/nt/NtMRUDocList$1;-><init>(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addUsedDocs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtMRUDocList$ItemBase;",
            ">;)V"
        }
    .end annotation

    .line 801
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtMRUDocList$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtMRUDocList$2;-><init>(Lcom/metamoji/nt/NtMRUDocList;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public count()I
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public findMruIndex(Ljava/lang/String;)I
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 700
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findMruIndexBySrcid(Ljava/lang/String;)I
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 712
    iget-object v2, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 713
    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->srcDocId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/nt/NtMRUDocList$Item;->srcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getCurrentSelection()Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    return-object v0
.end method

.method public getCurrentSelectionIndex()I
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDocInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/nt/NtMRUDocList$DocInfo;)Z
    .locals 4

    .line 927
    invoke-virtual {p2}, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->clear()V

    .line 928
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->hasLocalId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v0

    .line 929
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 934
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 936
    :cond_2
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocId:Ljava/lang/String;

    .line 939
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->DocTitle:Ljava/lang/String;

    .line 940
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfShare:Z

    .line 941
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result p1

    iput-boolean p1, p2, Lcom/metamoji/nt/NtMRUDocList$DocInfo;->IsKindOfTemplate:Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v3
.end method

.method public getDocTitle(Lcom/metamoji/nt/NtMRUDocList$Item;)Ljava/lang/String;
    .locals 3

    .line 914
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->hasLocalId()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->driveId()Ljava/lang/String;

    move-result-object v0

    .line 915
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object p1

    .line 917
    invoke-static {v0, p1}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 920
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/dvm/DvmUtil;->getDocTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtMRUDocList$MinItem;

    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtMRUDocList$MinItem;-><init>(Lcom/metamoji/nt/NtMRUDocList$Item;)V

    return-object v0
.end method

.method public getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    return-object p1
.end method

.method public maxTabCount()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMaxTabCount:I

    return v0
.end method

.method public moveMru(II)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    .line 880
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    .line 881
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 885
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 886
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 887
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    invoke-direct {p0, p0, v0, p1, p2}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemMoveEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;II)V

    :cond_1
    const/4 p1, 0x1

    .line 890
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 891
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->save()V

    return-void

    .line 882
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NtMRUDocList.moveMru() error. from="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reload()V
    .locals 1

    const/4 v0, 0x0

    .line 948
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtMRUDocList;->load(Z)V

    return-void
.end method

.method public removeEventListener(Lcom/metamoji/nt/NtMRUDocList$IMruEventHandler;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiEventListeners;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUsedDoc(Ljava/lang/String;)V
    .locals 2

    .line 831
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 833
    iget-object v1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 834
    iput-boolean v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 835
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    invoke-direct {p0, p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemDeleteEvent(Lcom/metamoji/nt/NtMRUDocList;Ljava/lang/String;)V

    .line 841
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->save()V

    return-void
.end method

.method public replaceUsedDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtMRUDocList$FeedFrom;)V
    .locals 7

    .line 852
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 858
    invoke-virtual {v0, p3}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeDocId(Ljava/lang/String;)Z

    .line 859
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList$Item;->isShareNoteOpenFromSharedDrive()Z

    move-result p1

    .line 860
    sget-object v1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->KEEP_CURRENT:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    const/4 v6, 0x1

    if-eq p6, v1, :cond_2

    .line 861
    sget-object p1, Lcom/metamoji/nt/NtMRUDocList$FeedFrom;->SDRIVE:Lcom/metamoji/nt/NtMRUDocList$FeedFrom;

    if-ne p6, p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    move v5, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 863
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtMRUDocList$Item;->_replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 864
    iget-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 865
    invoke-direct {p0, p0, v0, v6}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemStatusChangeEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    .line 867
    :cond_3
    iput-boolean v6, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    .line 869
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->save()V

    return-void
.end method

.method public resetCurrentSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 766
    iput-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    return-void
.end method

.method public setCurentSelection(Lcom/metamoji/nt/NtMRUDocList$Item;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mMruList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    if-eq v0, p1, :cond_0

    .line 741
    iput-object p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mCurrentSelection:Lcom/metamoji/nt/NtMRUDocList$Item;

    .line 742
    iget-object v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-direct {p0, p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemOpenEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;)V

    :cond_0
    return-void
.end method

.method public setCurentSelection(Ljava/lang/String;)V
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->findMruIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 757
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->getMruAt(I)Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtMRUDocList;->setCurentSelection(Lcom/metamoji/nt/NtMRUDocList$Item;)V

    :cond_0
    return-void
.end method

.method public setMaxTabCount(I)V
    .locals 0

    .line 509
    iput p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mMaxTabCount:I

    return-void
.end method

.method public setReadOnly(Lcom/metamoji/nt/NtMRUDocList$Item;Z)Z
    .locals 2

    .line 898
    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList$Item;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    .line 899
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtMRUDocList$Item;->_changeRO(Z)Z

    .line 900
    iget-object p2, p0, Lcom/metamoji/nt/NtMRUDocList;->mEventListeners:Lcom/metamoji/ui/UiEventListeners;

    invoke-virtual {p2}, Lcom/metamoji/ui/UiEventListeners;->hasListener()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 901
    invoke-direct {p0, p0, p1, v1}, Lcom/metamoji/nt/NtMRUDocList;->fireMruItemStatusChangeEvent(Lcom/metamoji/nt/NtMRUDocList;Lcom/metamoji/nt/NtMRUDocList$Item;Z)V

    :cond_0
    const/4 p1, 0x1

    .line 903
    iput-boolean p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mDirty:Z

    return p1

    .line 906
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/nt/NtMRUDocList;->save()V

    return v1
.end method

.method public setTabCount(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/metamoji/nt/NtMRUDocList;->mTabCount:I

    return-void
.end method

.method public tabCount()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/metamoji/nt/NtMRUDocList;->mTabCount:I

    return v0
.end method
