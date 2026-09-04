.class public Lcom/metamoji/ctold/search/CtTagCondition;
.super Ljava/lang/Object;
.source "CtTagCondition.java"


# static fields
.field private static final CT_TAG_CONDITION_MODEL_TYPE:Ljava/lang/String; = "TC"

.field private static final CT_TAG_CONDITION_MODEL_VERSION:I = 0x1


# instance fields
.field private propertyConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;"
        }
    .end annotation
.end field

.field private tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 49
    const-string v0, "n"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/search/CtTagCondition;->tagId:Ljava/lang/String;

    .line 50
    const-string v0, "c"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 53
    new-instance v2, Lcom/metamoji/ctold/search/CtPropertyCondition;

    invoke-direct {v2, v1}, Lcom/metamoji/ctold/search/CtPropertyCondition;-><init>(Ljava/util/Map;)V

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    return-void

    .line 47
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unknown version: %d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CT0040"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->tagId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->tagId:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 84
    const-string v0, "TC"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    .line 85
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 86
    const-string v0, "n"

    iget-object v1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->tagId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/search/CtPropertyCondition;

    .line 90
    invoke-virtual {v2}, Lcom/metamoji/ctold/search/CtPropertyCondition;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "c"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-object p1
.end method

.method public getPropertyConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/search/CtPropertyCondition;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtTagCondition;->propertyConditions:Ljava/util/List;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/ctold/search/CtTagCondition;->tagId:Ljava/lang/String;

    return-object v0
.end method
