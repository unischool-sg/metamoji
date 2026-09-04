.class public abstract Lcom/metamoji/ctold/tag/CtTagBase;
.super Ljava/lang/Object;
.source "CtTagBase.java"


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;"
        }
    .end annotation
.end field

.field private systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

.field private tagId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getTagId(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/property/CtProperty;

    .line 60
    invoke-virtual {v0}, Lcom/metamoji/ctold/property/CtProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "name"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_UNKNOWN:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-virtual {v0}, Lcom/metamoji/ctold/tag/CtSystemTagId;->getValue()I

    move-result v0

    const-string v1, "tagId"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ctold/tag/CtSystemTagId;->enumOf(I)Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v1, "properties"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 74
    new-instance v2, Lcom/metamoji/ctold/property/CtProperty;

    invoke-direct {v2, v1}, Lcom/metamoji/ctold/property/CtProperty;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 75
    invoke-virtual {v2}, Lcom/metamoji/ctold/property/CtProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ctold/tag/CtTagBase;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getSystemTagId(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/property/CtProperty;

    .line 46
    invoke-virtual {v0}, Lcom/metamoji/ctold/property/CtProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract drawForDialog(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
.end method

.method protected abstract drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;)V
.end method

.method protected abstract drawForThumbnail(Landroid/graphics/Canvas;Lcom/metamoji/cm/RectEx;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ctold/tag/CtTagBase;

    if-nez v1, :cond_1

    return v0

    .line 160
    :cond_1
    check-cast p1, Lcom/metamoji/ctold/tag/CtTagBase;

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/tag/CtTagBase;->equalsCtTagBase(Lcom/metamoji/ctold/tag/CtTagBase;)Z

    move-result p1

    return p1
.end method

.method public equalsCtTagBase(Lcom/metamoji/ctold/tag/CtTagBase;)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    iget-object v1, p1, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    iget-object v1, p1, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    iget-object p1, p1, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/metamoji/ctold/CtUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 109
    sget-object v0, Lcom/metamoji/ctold/tag/CtTagBase$1;->$SwitchMap$com$metamoji$ctold$tag$CtSystemTagId:[I

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-virtual {v1}, Lcom/metamoji/ctold/tag/CtSystemTagId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    return-object v0

    .line 124
    :cond_0
    const-string v0, "\u65e5\u4ed8\u306b\u95a2\u9023"

    return-object v0

    .line 121
    :cond_1
    const-string v0, "\u30a4\u30d9\u30f3\u30c8\u306b\u95a2\u9023"

    return-object v0

    .line 118
    :cond_2
    const-string v0, "Video"

    return-object v0

    .line 115
    :cond_3
    const-string v0, "\u30a4\u30d9\u30f3\u30c8"

    return-object v0

    .line 112
    :cond_4
    const-string v0, "\u30dc\u30a4\u30b9\u30ec\u30b3\u30fc\u30c0\u30fc"

    return-object v0
.end method

.method public getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 5

    .line 83
    const-string v0, "TAG"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 85
    const-string v1, "name"

    iget-object v2, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-virtual {v1}, Lcom/metamoji/ctold/tag/CtSystemTagId;->getValue()I

    move-result v1

    const-string v2, "tagId"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/property/CtProperty;

    .line 89
    invoke-virtual {v3, p1}, Lcom/metamoji/ctold/property/CtProperty;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 90
    invoke-virtual {v3}, Lcom/metamoji/ctold/property/CtProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_0
    const-string p1, "properties"

    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/property/CtProperty;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ctold/property/CtProperty;

    return-object p1
.end method

.method public getPropertyNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->tagId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    iget-object v2, p0, Lcom/metamoji/ctold/tag/CtTagBase;->properties:Ljava/util/Map;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ctold/CtUtils;->objectHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSystemTag()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/metamoji/ctold/tag/CtTagBase;->systemTagId:Lcom/metamoji/ctold/tag/CtSystemTagId;

    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_UNKNOWN:Lcom/metamoji/ctold/tag/CtSystemTagId;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
