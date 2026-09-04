.class public Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;
.super Ljava/lang/Object;
.source "DrGrGroupManager.java"


# static fields
.field public static final MODEL_PROPERTY_ID_COUNT:Ljava/lang/String; = "C!"

.field public static final MODEL_PROPERTY_ID_COUNT_OLD:Ljava/lang/String; = "!C"

.field public static final MODEL_TYPE:Ljava/lang/String; = "GM"

.field public static final MODEL_TYPE_GROUP:Ljava/lang/String; = "G"


# instance fields
.field private m_autoRemoveGroup:Z

.field private m_closed:Z

.field private m_groupsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field private m_inclusionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_membersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_modelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;-><init>(Lcom/metamoji/df/model/IModel;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;J)V
    .locals 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 59
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 60
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setAutoRemoveGroup(Z)V

    .line 68
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p3, :cond_c

    .line 70
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    .line 73
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "C!"

    invoke-static {v0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 75
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "!C"

    invoke-static {v1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 80
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 81
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 82
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, p3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 88
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-wide/16 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 90
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 95
    :cond_3
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-nez v5, :cond_4

    .line 97
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 103
    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 114
    invoke-static {v7, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 115
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    .line 120
    :cond_7
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    if-nez v8, :cond_8

    const/4 v8, 0x2

    .line 122
    invoke-static {v8, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_8
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v7, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    if-nez v7, :cond_9

    .line 132
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 133
    iget-object v9, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_9
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    :cond_a
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v3

    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-nez v3, :cond_2

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 143
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v1

    goto/16 :goto_1

    .line 148
    :cond_b
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide p1

    cmp-long p1, p1, v1

    if-gez p1, :cond_c

    .line 149
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 151
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 150
    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 157
    :cond_c
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 158
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->updateInclusionOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_3

    :cond_d
    return-void
.end method

.method private addMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 7

    .line 1597
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 1601
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "C!"

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 1609
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1610
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1615
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_2

    .line 1617
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1618
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1623
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_4

    .line 1625
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    if-nez v2, :cond_3

    .line 1627
    const-string v2, "G"

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 1628
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3, v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 1633
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    .line 1637
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1639
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1642
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1645
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1649
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 1650
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-nez v1, :cond_6

    .line 1652
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1653
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    :cond_6
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1660
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 1663
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_b

    .line 1666
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 1667
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1668
    invoke-direct {p0, p1, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1670
    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v5

    if-ne v5, v0, :cond_8

    .line 1671
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-nez v5, :cond_9

    .line 1673
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1674
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    :cond_9
    invoke-virtual {v5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1680
    :cond_a
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1686
    :cond_b
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1688
    invoke-virtual {v1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v2, :cond_d

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_2

    .line 1693
    :cond_d
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_e

    .line 1694
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_2

    .line 1699
    :cond_e
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v4

    .line 1700
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v0, :cond_f

    goto :goto_2

    .line 1706
    :cond_f
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1707
    invoke-direct {p0, v5, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_2

    :cond_11
    if-nez v3, :cond_12

    .line 1714
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1715
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    :cond_12
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    return-void
.end method

.method private checkConnectionOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 2003
    invoke-virtual {p4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2008
    :cond_0
    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2011
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2012
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 2015
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2016
    invoke-virtual {p5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2019
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2020
    invoke-virtual {p4, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 2025
    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2026
    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2029
    invoke-virtual {p5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 2032
    invoke-direct/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkConnectionOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_2

    :cond_5
    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    :goto_2
    move-object p2, v5

    move-object p3, v6

    move-object p4, v7

    move-object p5, v8

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method private checkConnectionOfMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Map;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 2045
    invoke-virtual {p5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2050
    :cond_0
    invoke-virtual {p5, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2053
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_6

    .line 2054
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 2057
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2058
    invoke-virtual {p4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2063
    :cond_3
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2066
    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2069
    invoke-virtual {p6, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2072
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2073
    invoke-virtual {p5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2076
    :cond_5
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 2077
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2078
    invoke-direct/range {v2 .. v8}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkConnectionOfMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Map;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private checkEquivalencyOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 2091
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2092
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2093
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 1579
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 1580
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 1586
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 1590
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 1591
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getGroupsContainingMembers_(Ljava/util/HashSet;ZZ)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;ZZ)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 1887
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 1889
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1894
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_4

    .line 1897
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 1903
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    if-nez v2, :cond_6

    return-object v1

    .line 1915
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1918
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 v4, 0x1

    if-eqz p3, :cond_8

    .line 1920
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v5

    if-gt v5, v4, :cond_8

    .line 1921
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1926
    :cond_8
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v6, :cond_a

    .line 1928
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 1931
    :cond_a
    invoke-direct {p0, v6, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1932
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    if-eqz p2, :cond_f

    .line 1940
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1941
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1943
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashSet;

    if-eqz p3, :cond_c

    .line 1946
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 1951
    :cond_d
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v1

    .line 1953
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1955
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v2

    if-le v2, v1, :cond_e

    .line 1961
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method private getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I
    .locals 1

    .line 1833
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 1834
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getMembersOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 1839
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 1840
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static newEmptyGroupManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1567
    const-string v0, "GM"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1569
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private removeGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 4

    .line 1846
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 1849
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 1852
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1856
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1857
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 1862
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1863
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 1865
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1873
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v3

    if-le v3, v1, :cond_3

    goto :goto_1

    .line 1876
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 1877
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1878
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private removeMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 1729
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 1737
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1738
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1739
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_2

    .line 1745
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_2

    .line 1747
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1812
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->autoRemoveGroup()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 1814
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 1818
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1819
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 1821
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 1827
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private saveMemberToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 2134
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 2135
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2140
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    .line 2141
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2143
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    .line 2144
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2146
    const-string v2, "G"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 2147
    invoke-static {v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    const/4 v1, 0x0

    .line 2151
    invoke-static {p2, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private saveToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 2113
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 2114
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2119
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    .line 2120
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2122
    const-string v1, "G"

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 2123
    invoke-static {p2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 2127
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2128
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 2160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2161
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static setWithSet(Ljava/util/Set;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 2157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private updateInclusionOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 1972
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_3

    .line 1973
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1979
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMembers_(Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1983
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1985
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1986
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1990
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 1993
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    if-lez v1, :cond_2

    .line 1991
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1993
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1974
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 843
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 844
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 848
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 852
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 855
    :cond_2
    monitor-enter p0

    .line 856
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 859
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addMembers(Ljava/util/List;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")V"
        }
    .end annotation

    .line 863
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 864
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 867
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 872
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 875
    :cond_2
    monitor-enter p0

    .line 876
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    .line 878
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 881
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 882
    invoke-direct {p0, v0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 885
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    .line 868
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public autoRemoveGroup()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_autoRemoveGroup:Z

    return v0
.end method

.method public checkEquivalencyOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 1180
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1181
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 1188
    :cond_1
    monitor-enter p0

    .line 1189
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, p2, :cond_3

    .line 1193
    monitor-exit p0

    return v0

    .line 1195
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkEquivalencyOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    monitor-exit p0

    return p1

    .line 1190
    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 1196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1185
    :cond_5
    :goto_1
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public checkGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 357
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 362
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 365
    :cond_1
    monitor-enter p0

    .line 366
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkInclusionGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 5

    .line 782
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 783
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 787
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 790
    :cond_1
    monitor-enter p0

    .line 791
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 792
    monitor-exit p0

    return v2

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 795
    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 798
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 799
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 800
    monitor-exit p0

    return v0

    .line 803
    :cond_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 804
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkInclusionOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 746
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 747
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 751
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 754
    :cond_1
    monitor-enter p0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_2

    .line 756
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_2

    move v2, v0

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 757
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 984
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 985
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 989
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 992
    :cond_1
    monitor-enter p0

    .line 993
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 994
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 998
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 999
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1003
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 1007
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1010
    :cond_2
    monitor-enter p0

    .line 1011
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1012
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createConnectedComponentsOfGroups(Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation

    .line 1061
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1062
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1063
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1066
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1067
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1069
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x2

    .line 1070
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1071
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1073
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1074
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithSet(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1

    .line 1076
    :cond_3
    monitor-enter p0

    .line 1078
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1081
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1084
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1087
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1088
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 1093
    :cond_4
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 1094
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move-object v4, p1

    .line 1097
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkConnectionOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/HashSet;)V

    move-object p1, v4

    goto :goto_0

    :cond_5
    move-object v1, p0

    .line 1100
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 1101
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public createConnectedComponentsOfGroups(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation

    .line 1105
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1106
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1107
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1110
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1111
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1113
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x2

    .line 1114
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1115
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 1117
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1118
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithSet(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p2, :cond_4

    .line 1121
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->createConnectedComponentsOfGroups(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1123
    :cond_4
    monitor-enter p0

    .line 1125
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1128
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_6

    .line 1129
    :try_start_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1130
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1132
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_4

    .line 1136
    :cond_6
    :try_start_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1139
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1142
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithSet(Ljava/util/Set;)Ljava/util/HashSet;

    move-result-object v7

    .line 1145
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1146
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 1151
    :cond_7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, p0

    move-object v4, p2

    .line 1154
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkConnectionOfMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/Map;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1162
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 1163
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object p2, v4

    goto :goto_1

    :cond_9
    move-object v1, p0

    .line 1168
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1169
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->setWithObject(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1172
    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_3
    move-object p1, v0

    .line 1173
    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public createGroup()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 219
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 220
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 223
    :cond_0
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 228
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 229
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 230
    monitor-exit p0

    return-object v1

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_2

    .line 235
    const-string v1, "C!"

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 238
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createGroupWithMembers(Ljava/util/List;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;"
        }
    .end annotation

    .line 249
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 250
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_4

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 257
    :cond_1
    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->createGroup()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 261
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 262
    monitor-exit p0

    return-object v1

    .line 266
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 267
    invoke-direct {p0, v1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 270
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 271
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 254
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .line 1483
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1486
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 1487
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    .line 1488
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1490
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1493
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1494
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    .line 1496
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 1497
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1498
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    .line 1500
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 1501
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1502
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    .line 1504
    :cond_4
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 1505
    iput-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 1506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 173
    throw v0
.end method

.method public getAllGroups()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 733
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 734
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 737
    :cond_0
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 739
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEquivalentGroupsToGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 1203
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1204
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    :cond_0
    if-nez p1, :cond_1

    .line 1209
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1212
    :cond_1
    monitor-enter p0

    .line 1213
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1214
    monitor-exit p0

    return-object v2

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_8

    .line 1217
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1220
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1221
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1222
    invoke-virtual {v4, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 1225
    :cond_5
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-eqz v5, :cond_4

    .line 1226
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1227
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1230
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_7

    move-object v2, v1

    :cond_7
    monitor-exit p0

    return-object v2

    .line 1218
    :cond_8
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 1231
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getGroupsComposedOfMembers(Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 677
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsComposedOfMembers(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsComposedOfMembers(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 681
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 682
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 685
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 689
    :cond_1
    monitor-enter p0

    .line 690
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 691
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 692
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 693
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-eqz v5, :cond_8

    .line 694
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 698
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz p2, :cond_5

    .line 699
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_0

    .line 702
    :cond_5
    invoke-direct {p0, v7}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 703
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 705
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 707
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 709
    :goto_1
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v0

    goto :goto_0

    :cond_7
    if-nez v6, :cond_2

    .line 714
    monitor-exit p0

    return-object v2

    .line 695
    :cond_8
    :goto_2
    monitor-exit p0

    return-object v2

    .line 717
    :cond_9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 718
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 720
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 722
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 725
    :cond_b
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_c

    move-object v2, p1

    :cond_c
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 686
    :cond_d
    :goto_4
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method public getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;ZZ)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 537
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 538
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 542
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz p3, :cond_15

    .line 545
    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 548
    :cond_2
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_14

    .line 551
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_5

    .line 556
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 559
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 562
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 564
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    if-eqz v6, :cond_6

    .line 568
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 569
    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v7

    .line 570
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 571
    invoke-direct {p0, v8}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v9

    if-le v9, v7, :cond_5

    .line 572
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    :cond_6
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    if-eqz v5, :cond_4

    .line 579
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 580
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 581
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 587
    :cond_7
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 588
    monitor-exit p0

    return-object v1

    .line 592
    :cond_8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 593
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 595
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 600
    :cond_9
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 602
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 603
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 609
    :cond_b
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    if-eqz p5, :cond_d

    .line 614
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gt v2, v0, :cond_d

    .line 615
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 620
    :cond_d
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    if-nez p4, :cond_f

    .line 625
    monitor-exit p0

    return-object p1

    .line 629
    :cond_f
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 632
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 633
    iget-object p4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    if-eqz p4, :cond_12

    .line 635
    invoke-virtual {p4}, Ljava/util/HashSet;->size()I

    move-result p5

    if-lez p5, :cond_12

    .line 636
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_10
    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_12

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 637
    invoke-virtual {p0, p5, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkEquivalencyOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    .line 640
    :cond_11
    invoke-virtual {v3, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_10

    goto :goto_3

    .line 647
    :cond_12
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 651
    :cond_13
    monitor-exit p0

    return-object p2

    .line 552
    :cond_14
    :goto_5
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 652
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 546
    :cond_15
    :goto_6
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;ZZ)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 445
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 446
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 450
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz p2, :cond_14

    .line 453
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 456
    :cond_2
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_13

    .line 459
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    .line 464
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 465
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 466
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_4

    .line 467
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 468
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 469
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :cond_5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    if-nez p3, :cond_a

    .line 477
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 478
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p4, :cond_7

    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v3

    if-le v3, v0, :cond_6

    .line 479
    :cond_7
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 482
    :cond_8
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_9

    move-object v1, p2

    :cond_9
    monitor-exit p0

    return-object v1

    .line 486
    :cond_a
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 488
    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v3

    .line 489
    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz p4, :cond_c

    if-gt v3, v0, :cond_c

    goto :goto_2

    .line 494
    :cond_c
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-eqz v4, :cond_10

    .line 497
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_d

    goto :goto_3

    .line 504
    :cond_d
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 506
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v5

    if-le v5, v3, :cond_e

    goto :goto_2

    .line 512
    :cond_f
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 498
    :cond_10
    :goto_3
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 516
    :cond_11
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_12

    move-object v1, p2

    :cond_12
    monitor-exit p0

    return-object v1

    .line 460
    :cond_13
    :goto_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 517
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 454
    :cond_14
    :goto_5
    invoke-virtual {p0, p1, p3, p4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "ZZ)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 375
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 376
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 380
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 383
    :cond_1
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_d

    .line 386
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_2
    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    .line 394
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 395
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 396
    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v1

    if-gt v1, v0, :cond_3

    .line 397
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_4
    monitor-exit p0

    return-object p2

    .line 402
    :cond_5
    monitor-exit p0

    return-object p1

    .line 407
    :cond_6
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 410
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 412
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v2

    if-eqz p3, :cond_7

    if-gt v2, v0, :cond_7

    goto :goto_1

    .line 418
    :cond_7
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_b

    .line 421
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 428
    :cond_8
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 430
    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v4

    if-le v4, v2, :cond_9

    goto :goto_1

    .line 436
    :cond_a
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    :cond_b
    :goto_2
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_c
    monitor-exit p0

    return-object p2

    .line 387
    :cond_d
    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 441
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getGroupsContainingMembers(Ljava/util/List;ZZ)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;ZZ)",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 656
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 657
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 660
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 664
    :cond_1
    monitor-enter p0

    .line 665
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMembers_(Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 666
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_2

    move-object v1, p1

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 667
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 661
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public getGroupsIncludedInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 811
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 812
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 816
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 819
    :cond_1
    monitor-enter p0

    .line 820
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 821
    monitor-exit p0

    return-object v1

    .line 823
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 824
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 825
    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 828
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-eqz v4, :cond_3

    .line 829
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 830
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_6

    move-object v1, v0

    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 834
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getGroupsIncludingGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 764
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 765
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 769
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 772
    :cond_1
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_2

    .line 774
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v1, p1

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMemberCountOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I
    .locals 3

    .line 1019
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1020
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1024
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1027
    :cond_1
    monitor-enter p0

    .line 1028
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1029
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1037
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1041
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1044
    :cond_1
    monitor-enter p0

    .line 1045
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1046
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getModelOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1344
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1345
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1349
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1352
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1353
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public groupCount()I
    .locals 2

    .line 194
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 183
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public removeAllGroups()V
    .locals 4

    .line 294
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 295
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 298
    :cond_0
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 300
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 307
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 310
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 311
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_modelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 320
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 321
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAllSingletons()V
    .locals 5

    .line 326
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 327
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 330
    :cond_0
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 332
    monitor-exit p0

    return-void

    .line 336
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 338
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 340
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 346
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 347
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_1

    .line 350
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 278
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 279
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 283
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 286
    :cond_1
    monitor-enter p0

    .line 287
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 290
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 952
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 953
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 957
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 960
    :cond_1
    monitor-enter p0

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_5

    .line 963
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 966
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 969
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 970
    invoke-direct {p0, p1, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 974
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 975
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->updateInclusionOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_1

    .line 977
    :cond_4
    monitor-exit p0

    return-void

    .line 964
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 977
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 892
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 893
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 897
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 901
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 904
    :cond_2
    monitor-enter p0

    .line 905
    :try_start_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 906
    monitor-exit p0

    return-void

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_7

    .line 911
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 914
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 918
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 922
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 923
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->updateInclusionOfGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 925
    :cond_6
    monitor-exit p0

    return-void

    .line 912
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 925
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeMembers(Ljava/util/List;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")V"
        }
    .end annotation

    .line 929
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 930
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 933
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 938
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 941
    :cond_2
    monitor-enter p0

    .line 942
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 943
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 945
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    .line 934
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public resetIdPrefix(J)V
    .locals 1

    .line 1470
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1471
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1474
    :cond_0
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 1476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveMemberToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 1299
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1300
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 1304
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1307
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1308
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1311
    :cond_2
    monitor-enter p0

    .line 1312
    :try_start_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->saveMemberToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1315
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveMembersToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 1319
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1320
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 1324
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1327
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1328
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1331
    :cond_2
    monitor-enter p0

    .line 1332
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1333
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1334
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->saveMemberToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 1337
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 1238
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1239
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1242
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1243
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1246
    :cond_1
    monitor-enter p0

    .line 1247
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1248
    monitor-exit p0

    return-void

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1251
    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->saveToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 1253
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 1257
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1258
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 1262
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1265
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1266
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1269
    :cond_2
    monitor-enter p0

    .line 1270
    :try_start_0
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1271
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->saveToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1273
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 1277
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1278
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 1282
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1285
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1286
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1289
    :cond_2
    monitor-enter p0

    .line 1290
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1291
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1292
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->saveToModel_(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 1295
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAutoRemoveGroup(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_autoRemoveGroup:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "### ----- Log Members Map (Key:Group, Value:Members) ----- ###\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1518
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "  G(%s) : "

    const-string v4, "nil\n"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1519
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_membersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1521
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1522
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "M(%s), "

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1524
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1527
    :cond_1
    const-string v1, "### ----- Log Groups Map (Key:Member, Value:Groups) ----- ###\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v5, "G(%s), "

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1529
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "  M(%s) : "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1531
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1532
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1534
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1537
    :cond_3
    const-string v1, "### ----- Log Inclusion Map (Key:Group, Value:Groups) ----- ##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1539
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    iget-object v6, p0, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1541
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1542
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1544
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1547
    :cond_5
    const-string v1, "### ----- Log End ----- ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
