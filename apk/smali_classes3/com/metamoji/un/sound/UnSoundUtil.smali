.class public Lcom/metamoji/un/sound/UnSoundUtil;
.super Ljava/lang/Object;
.source "UnSoundUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSoundUnit(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 60
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/metamoji/un/sound/UnSoundUtil$2;

    invoke-direct {v1}, Lcom/metamoji/un/sound/UnSoundUtil$2;-><init>()V

    .line 72
    invoke-static {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUtil;->soundUnitIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-static {p0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 78
    const-string/jumbo v2, "ticket"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "recordId"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v3, "mediaId"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static removeSoundFromUnit(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 18
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/metamoji/un/sound/UnSoundUtil$1;

    invoke-direct {v1}, Lcom/metamoji/un/sound/UnSoundUtil$1;-><init>()V

    .line 30
    invoke-static {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUtil;->soundUnitIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-static {p0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 37
    const-string v2, "recordId"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    const-string v4, "mediaId"

    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_0

    .line 40
    :cond_1
    const-string/jumbo v3, "ticket"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 41
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 42
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 44
    const-string v2, "authorInfo"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static soundUnitIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    sget-object v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v1, p2, v0, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 107
    invoke-virtual {p1, p0, v1}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v0
.end method
