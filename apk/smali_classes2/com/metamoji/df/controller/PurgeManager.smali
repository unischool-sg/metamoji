.class public Lcom/metamoji/df/controller/PurgeManager;
.super Ljava/lang/Object;
.source "PurgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;
    }
.end annotation


# static fields
.field private static final DEBUG_MAX_PAGES:I = 0x3

.field private static final RELEASE_MAX_PAGES:I = 0x3


# instance fields
.field private _lru_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _maxSize:I

.field private _owner:Lcom/metamoji/df/controller/DfNoteController;

.field private _purgeableCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DfNoteController;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/metamoji/df/controller/PurgeManager;->_owner:Lcom/metamoji/df/controller/DfNoteController;

    .line 34
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/PurgeManager;->_purgeableCheckers:Ljava/util/List;

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/metamoji/df/controller/PurgeManager;->_maxSize:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public installPurgeableChecker(Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_purgeableCheckers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isPurgeTarget(Lcom/metamoji/df/controller/DfPageController;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_owner:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/metamoji/df/controller/PurgeManager;->_owner:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v2, p1}, Lcom/metamoji/df/controller/DfNoteController;->getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I

    move-result v2

    if-ne v1, v2, :cond_0

    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_purgeableCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;

    .line 103
    invoke-interface {v2, p1}, Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;->isPurgeable(Lcom/metamoji/df/controller/DfPageController;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 108
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    .line 109
    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public onMemoryWarning()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onPageActivate(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    .line 53
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    if-ltz v0, :cond_1

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/metamoji/df/controller/PurgeManager;->_maxSize:I

    if-lt v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onPageRestoreCancelled(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getModelID()I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_lru_list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public uninstallPurgeableChecker(Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/df/controller/PurgeManager;->_purgeableCheckers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
