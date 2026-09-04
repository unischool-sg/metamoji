.class public Lcom/metamoji/un/draw2/module/element/DrElementManager;
.super Ljava/lang/Object;
.source "DrElementManager.java"


# static fields
.field private static final MODEL_PROPERTY_ID_COUNT:Ljava/lang/String; = "C"

.field public static final MODEL_TYPE:Ljava/lang/String; = "EM"


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_elementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_newTypeElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_orderedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    .line 60
    iput-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 61
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 62
    invoke-virtual {p1, p3, p4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    .line 67
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_8

    .line 69
    const-string p2, "C"

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_8

    .line 77
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->restoreElementFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 87
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->setIdToElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    .line 90
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 92
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_5

    .line 94
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkNewTypeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 101
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    if-nez p3, :cond_2

    .line 102
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    .line 104
    :cond_2
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 109
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p3

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 113
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->activate()V

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x1

    .line 118
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p2, 0x2

    .line 121
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 123
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->cancelInitialization()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_8
    return-void
.end method

.method public static newElementManagerModelWithElementModels(Ljava/util/List;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    .line 987
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->newEmptyElementManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    .line 989
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    .line 992
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 993
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 994
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 997
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static newEmptyElementManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 976
    const-string v0, "EM"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 978
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private registerElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z
    .locals 4

    .line 1026
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->setIdToElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1027
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ltz p2, :cond_1

    .line 1032
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    :cond_1
    move v1, v0

    .line 1035
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkNewTypeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1039
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    if-nez v2, :cond_3

    .line 1040
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    .line 1042
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 1044
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyNewTypeElementExists()V

    .line 1049
    :cond_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    .line 1051
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1053
    :cond_5
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1054
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->insertChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 1059
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    .line 1061
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_1

    .line 1063
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChildAtIndex(ILcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1071
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 1069
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1071
    :cond_9
    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    return v0
.end method

.method private setIdToElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 6

    .line 1109
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1113
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1114
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1120
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 1128
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 1129
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 1137
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_3

    .line 1138
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "C"

    invoke-static {v2, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    return v1
.end method

.method public static setInformationForAllElementModelsInModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;Z)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1015
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1017
    invoke-virtual {p1, p0, p2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->saveToModel(Lcom/metamoji/df/model/IModel;Z)V

    .line 1018
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private unregisterElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkNewTypeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1081
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1082
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    .line 1083
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyNewTypeElementDoesNotExists()V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1095
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1100
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 1

    const/4 v0, -0x1

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    return-void
.end method

.method public addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 198
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 202
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 206
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 209
    :cond_2
    monitor-enter p0

    .line 210
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->checkAddableElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 211
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 212
    monitor-exit p0

    return-void

    .line 214
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->registerElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x4

    .line 215
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 216
    monitor-exit p0

    return-void

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->activate()V

    .line 219
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z
    .locals 4

    .line 451
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 456
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 459
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 460
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 463
    :cond_2
    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_3

    const/4 p1, 0x3

    .line 465
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 466
    monitor-exit p0

    return v2

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-ne v1, p1, :cond_4

    .line 472
    monitor-exit p0

    return v2

    .line 476
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_5

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    move v3, v0

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    if-nez v3, :cond_7

    .line 484
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p2, v3, :cond_6

    move v2, v0

    :cond_6
    if-nez v2, :cond_7

    .line 488
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_7
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 494
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 496
    :cond_8
    invoke-virtual {v3, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 500
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 501
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    if-eqz v2, :cond_9

    .line 503
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 505
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->insertChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 510
    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 511
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    if-eqz v2, :cond_b

    .line 513
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_3

    .line 515
    :cond_b
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChildAtIndex(ILcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 518
    :cond_c
    :goto_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public changeOrderOfElements(Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;I)Z"
        }
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_14

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_8

    .line 531
    :cond_1
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_2

    const/4 p1, 0x2

    .line 533
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 534
    monitor-exit p0

    return v2

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 541
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 542
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 543
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    .line 545
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_4
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-nez v1, :cond_7

    .line 555
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_6

    move v2, v0

    :cond_6
    if-nez v2, :cond_7

    .line 559
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    :cond_7
    if-eqz v2, :cond_9

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 566
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 567
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 571
    :cond_9
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 572
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 573
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 579
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_f

    if-eqz v2, :cond_d

    .line 581
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 582
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 583
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    .line 584
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 589
    :cond_d
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 590
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 591
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    .line 592
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->insertChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_e
    move-object v3, v4

    goto :goto_5

    .line 600
    :cond_f
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    if-eqz v1, :cond_13

    if-eqz v2, :cond_11

    .line 602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 603
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 604
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 605
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p2

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_6

    .line 609
    :cond_11
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 610
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 611
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 612
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChildAtIndex(ILcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_7

    .line 617
    :cond_13
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 528
    :cond_14
    :goto_8
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public checkAddableElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 3

    .line 354
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 359
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 365
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method public checkElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 3

    .line 331
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 336
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 339
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 342
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    .line 345
    :cond_3
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    move v2, v0

    :cond_4
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 949
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    .line 953
    monitor-enter p0

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 955
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 956
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 960
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 961
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    .line 962
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    .line 963
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    .line 964
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public elementCount()I
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    throw v0
.end method

.method public getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 2

    .line 300
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 301
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 305
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 308
    :cond_1
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/DrElement;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 2

    .line 314
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 315
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 318
    :cond_0
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 320
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 321
    monitor-exit p0

    return-object v1

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/DrElement;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 324
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrderMapOfElementIdSet(Ljava/util/Set;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 423
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 427
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 430
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 433
    :cond_2
    monitor-enter p0

    .line 434
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    move v2, v3

    .line 436
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 437
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 438
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 447
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 374
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 378
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 384
    :cond_2
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;II)I
    .locals 3

    .line 390
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 391
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 395
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 398
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-ge p3, p2, :cond_3

    const/4 p1, 0x2

    .line 402
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 405
    :cond_3
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_4

    const/4 p1, 0x3

    .line 407
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 408
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 412
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    .line 414
    invoke-static {p2, v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 415
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 417
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getSortedElementIdsByAscending(ZLjava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 836
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 840
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 843
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 846
    :cond_2
    monitor-enter p0

    .line 847
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    .line 849
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 851
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 852
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 853
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_3

    goto :goto_0

    .line 861
    :cond_4
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 862
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 863
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_5

    .line 871
    :cond_6
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSortedElementOrdersByAscending(ZLjava/util/Set;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 878
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 882
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 885
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 888
    :cond_2
    monitor-enter p0

    .line 889
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    .line 891
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    if-eqz p1, :cond_4

    move p1, v3

    .line 893
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 894
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 895
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 896
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 904
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_6

    .line 905
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 906
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 907
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 915
    :cond_6
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSortedElementsByAscending(ZLjava/util/Set;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 628
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 632
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 635
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 638
    :cond_2
    monitor-enter p0

    .line 639
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    .line 641
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 643
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 644
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 645
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_3

    goto :goto_0

    .line 653
    :cond_4
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 654
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 655
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_5

    .line 663
    :cond_6
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSortedElementsByAscending(ZLjava/util/Set;[I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;[I)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 673
    aput v2, p3, v1

    const/4 v3, 0x1

    .line 674
    aput v2, p3, v3

    .line 675
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 676
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    .line 680
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 683
    :cond_1
    monitor-enter p0

    .line 684
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v3, :cond_9

    if-eqz p1, :cond_4

    move v5, v1

    move v6, v5

    move p1, v2

    .line 707
    :goto_0
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_d

    .line 708
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 709
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 710
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_2

    move v2, v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move p1, v5

    if-ne v6, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 722
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    move v6, v1

    move v5, v2

    move v2, p1

    move p1, v5

    :goto_1
    if-ltz v2, :cond_8

    .line 723
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 724
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 725
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez p1, :cond_5

    move p1, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_6

    goto :goto_3

    :cond_6
    move v5, v2

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_3

    .line 690
    :cond_9
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz p1, :cond_b

    .line 692
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v2, :cond_a

    .line 694
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, p2

    goto :goto_2

    :cond_a
    const/4 p1, 0x2

    .line 698
    invoke-static {p1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_b
    move p2, v2

    :goto_2
    move p1, p2

    goto :goto_3

    :cond_c
    move p1, v2

    .line 740
    :cond_d
    :goto_3
    aput v2, p3, v1

    .line 741
    aput p1, p3, v3

    .line 742
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 743
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSortedElementsByAscending(ZLjava/util/Set;[ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;[I",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 754
    aput v1, p3, v0

    const/4 v2, 0x1

    .line 755
    aput v1, p3, v2

    .line 756
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 757
    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 758
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_1

    .line 761
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;[I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    .line 764
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 765
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 767
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 768
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 770
    :cond_3
    monitor-enter p0

    .line 771
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    move v4, v0

    move p1, v1

    .line 773
    :goto_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 774
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 775
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 776
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 777
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v1, :cond_4

    move v1, v4

    :cond_4
    move p1, v4

    goto :goto_1

    .line 783
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    if-eqz p6, :cond_8

    .line 785
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p5, :cond_8

    .line 789
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 795
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 800
    :cond_9
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    move v4, v1

    :goto_2
    if-ltz p1, :cond_f

    .line 801
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 802
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v6, v7, :cond_d

    .line 803
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 804
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_a

    move v4, p1

    :cond_a
    move v1, p1

    goto :goto_3

    .line 810
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c

    if-eqz p4, :cond_e

    .line 812
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    if-eqz p5, :cond_e

    .line 816
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    if-eqz p6, :cond_e

    .line 822
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-interface {p6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_f
    move p1, v4

    .line 827
    :cond_10
    aput v1, p3, v0

    .line 828
    aput p1, p3, v2

    .line 829
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    .line 830
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasNewTypeElement()Z
    .locals 2

    .line 923
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 924
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 927
    :cond_0
    monitor-enter p0

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_newTypeElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 929
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lastElementOrder()I
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public removeAllElements()V
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 272
    :cond_0
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 275
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->deactivate()V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 280
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChildren(Lcom/metamoji/df/model/IModel;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->removeChildren(Lcom/metamoji/df/sprite/Sprite;)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 227
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 231
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 235
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 239
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 242
    :cond_3
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 p1, 0x4

    .line 244
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 245
    monitor-exit p0

    return-void

    .line 247
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->deactivate()V

    .line 248
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->unregisterElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeElementAtOrder(I)Z
    .locals 4

    .line 253
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 257
    :cond_0
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lt p1, v0, :cond_1

    .line 259
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 260
    monitor-exit p0

    return v2

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_orderedElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 263
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetIdPrefix(J)V
    .locals 1

    .line 936
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 937
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 940
    :cond_0
    monitor-enter p0

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 942
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
