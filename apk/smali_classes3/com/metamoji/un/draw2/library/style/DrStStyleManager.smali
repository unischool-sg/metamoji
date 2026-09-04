.class public Lcom/metamoji/un/draw2/library/style/DrStStyleManager;
.super Ljava/lang/Object;
.source "DrStStyleManager.java"


# static fields
.field private static final MODEL_PROPERTY_ID_COUNT:Ljava/lang/String; = "C!"

.field private static final MODEL_PROPERTY_ID_COUNT_OLD:Ljava/lang/String; = "!C"

.field public static final MODEL_TYPE:Ljava/lang/String; = "SM"


# instance fields
.field private m_cleanAlways:Z

.field private m_closed:Z

.field private m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_styleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/style/DrStStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;-><init>(Lcom/metamoji/df/model/IModel;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;J)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    .line 49
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 53
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_5

    .line 55
    const-string p2, "C!"

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    const-string p3, "!C"

    invoke-static {p3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 64
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p2, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 70
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 71
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 76
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->setIdToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    .line 84
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4

    .line 85
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static newEmptyStyleManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 444
    const-string v0, "SM"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 446
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private registerStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 2

    .line 458
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->setIdToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 459
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private setIdToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 6

    .line 489
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 492
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 493
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 499
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 507
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 516
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 517
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 518
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 517
    const-string v2, "C!"

    invoke-static {v2, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    return v1
.end method

.method private unregisterStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allStyleIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 152
    :cond_0
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 3

    .line 345
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 346
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 349
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public clean()V
    .locals 4

    .line 387
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 388
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 391
    :cond_0
    monitor-enter p0

    .line 392
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    .line 394
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->userCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 395
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    .line 399
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->unregisterStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    goto :goto_1

    .line 401
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanAlways()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_cleanAlways:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 421
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 424
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 425
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 427
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 428
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 429
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    .line 431
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 432
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 195
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 199
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 202
    :cond_1
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 206
    monitor-exit p0

    return-void

    :cond_3
    if-ne v0, p1, :cond_4

    .line 210
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->decrementUserCount()V

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->cleanAlways()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->userCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 214
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->unregisterStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    .line 218
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 220
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    throw v0
.end method

.method public generateStyleId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 362
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 363
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 366
    :cond_0
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 370
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 371
    monitor-exit p0

    return-object v1

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_2

    .line 376
    const-string v1, "C!"

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 379
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStyleById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 278
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 284
    :cond_1
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 286
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 3

    .line 293
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 294
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 298
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 301
    :cond_1
    monitor-enter p0

    .line 302
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->getStyleIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 304
    monitor-exit p0

    return-object v1

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    if-nez v0, :cond_3

    .line 308
    monitor-exit p0

    return-object v1

    .line 310
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v1, v0

    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 4

    .line 320
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 321
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 327
    :cond_1
    monitor-enter p0

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->checkStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    monitor-exit p0

    return-object p1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    .line 332
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->isEqualToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    monitor-exit p0

    return-object v2

    .line 336
    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public removeAllStyles()V
    .locals 3

    .line 256
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 260
    :cond_0
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 264
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V
    .locals 3

    .line 230
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 231
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 235
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 238
    :cond_1
    monitor-enter p0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-ne v0, p1, :cond_3

    .line 243
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->unregisterStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 246
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x3

    .line 250
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 252
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetIdPrefix(J)V
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 409
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 412
    :cond_0
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 414
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCleanAlways(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_cleanAlways:Z

    return-void
.end method

.method public styleCount()I
    .locals 2

    .line 136
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 165
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 169
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 172
    :cond_1
    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->m_styleMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/DrStStyle;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_4

    const/4 p1, 0x2

    .line 177
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 178
    monitor-exit p0

    return-void

    .line 182
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->registerStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x3

    .line 183
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 184
    monitor-exit p0

    return-void

    .line 189
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->incrementUserCount()V

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
