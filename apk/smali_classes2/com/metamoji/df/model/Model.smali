.class public Lcom/metamoji/df/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/metamoji/df/model/IModel;


# instance fields
.field private childModelCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private contentLoaded:Z

.field private contentModified:Z

.field private index:I

.field private manager:Lcom/metamoji/df/model/ModelManager;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/ModelManager;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    .line 37
    iput p2, p0, Lcom/metamoji/df/model/Model;->index:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z

    .line 39
    iput-boolean p1, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    return-void
.end method

.method private castObjectSet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 98
    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method private castStringToObjectMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 93
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private checkManager(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    return-void

    .line 657
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0020"

    const-string v1, "Passed model is in different model tree"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private cleanupModelPropertyValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 1

    .line 435
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 438
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 439
    invoke-direct {p0, v0, p2}, Lcom/metamoji/df/model/Model;->cleanupModelPropertyValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    goto :goto_0

    .line 442
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 445
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 446
    invoke-direct {p0, v0, p2}, Lcom/metamoji/df/model/Model;->cleanupModelPropertyValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    goto :goto_1

    .line 449
    :cond_1
    instance-of v0, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 452
    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 453
    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getRefModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private getAllPropertyNamesCore()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManager;->getAllPreloadedPropertyNames(I)Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v3
.end method

.method private getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result p1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object p1

    .line 755
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 756
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 757
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 763
    throw p1
.end method

.method private importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;
    .locals 3

    .line 292
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 297
    invoke-direct {p0, v1, p2}, Lcom/metamoji/df/model/Model;->importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;

    move-result-object v1

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 302
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 305
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->castStringToObjectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/metamoji/df/model/Model;->importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0

    .line 313
    :cond_3
    instance-of v0, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    check-cast p1, Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/metamoji/df/model/ModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1

    .line 319
    :cond_4
    instance-of v0, p1, Lcom/metamoji/cm/Blob;

    if-eqz v0, :cond_5

    .line 323
    check-cast p1, Lcom/metamoji/cm/Blob;

    .line 324
    new-instance p2, Lcom/metamoji/cm/Blob;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 327
    :cond_5
    instance-of v0, p1, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_6

    .line 330
    check-cast p1, Lcom/metamoji/cm/PointArray;

    .line 331
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    return-object p1

    .line 334
    :cond_6
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_8

    .line 337
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->castObjectSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 339
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 340
    invoke-direct {p0, v1, p2}, Lcom/metamoji/df/model/Model;->importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;

    move-result-object v1

    .line 341
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-object v0

    :cond_8
    return-object p1
.end method

.method private setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 904
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 906
    const-string v0, "!type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 921
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    :cond_0
    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/metamoji/df/model/ModelManager;->setPreloadedProperty(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V

    .line 932
    :goto_0
    const-string p2, "!version"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 933
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1, p0}, Lcom/metamoji/df/model/ModelManager;->addUsedVersionInfo(Lcom/metamoji/df/model/Model;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :cond_2
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    .line 907
    :cond_3
    :try_start_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0021"

    const-string v0, "type property must not be changed."

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 937
    iget-object p2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 938
    throw p1
.end method

.method private unloadContent()V
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->unloadAdditionalContent()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 667
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->checkManager(Lcom/metamoji/df/model/IModel;)V

    .line 668
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->addChildModel(II)V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 679
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 680
    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/Model;->add(Lcom/metamoji/df/model/IModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 684
    throw p1
.end method

.method public childModelAdded(I)V
    .locals 0

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    return-void
.end method

.method public childModelWillBeRemoved(I)V
    .locals 0

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    return-void
.end method

.method protected cleanupAdditionalContent(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 0

    return-void
.end method

.method public cleanupModel(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 4

    .line 372
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getSkippableModelTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->unloadContent()V

    return-void

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 384
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getDropPropertyNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 388
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    const-string v2, "!type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v3, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/df/model/ModelManager;->deletePreloadedProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 398
    :cond_4
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V

    goto :goto_0

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 409
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 410
    invoke-direct {p0, v1, p1}, Lcom/metamoji/df/model/Model;->cleanupModelPropertyValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    goto :goto_1

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManager;->getAllPreloadedPropertyNames(I)Ljava/util/List;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v3, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 418
    invoke-direct {p0, v1, p1}, Lcom/metamoji/df/model/Model;->cleanupModelPropertyValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    goto :goto_2

    .line 421
    :cond_7
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/Model;->cleanupAdditionalContent(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 423
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    if-eqz v0, :cond_8

    .line 425
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 427
    :cond_8
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->unloadContent()V

    return-void
.end method

.method public deleteProperty(Ljava/lang/String;)V
    .locals 2

    .line 1036
    const-string v0, "!type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 1041
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 1042
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->deletePreloadedProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1049
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 1057
    throw p1

    .line 1037
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0022"

    const-string v1, "type property must not be deleted."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v2, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v1

    .line 505
    sget-object v2, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v2, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 512
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 513
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->destroy()V

    move-object v1, v2

    goto :goto_0

    .line 518
    :cond_2
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    .line 519
    iget v2, p0, Lcom/metamoji/df/model/Model;->index:I

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->destruct()V

    .line 523
    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelManager;->destroyModel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 526
    throw v1
.end method

.method public destruct()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->unloadContent()V

    .line 53
    iput-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/metamoji/df/model/Model;->index:I

    return-void
.end method

.method public didReceiveMemoryWarning()V
    .locals 2

    const/4 v0, -0x1

    .line 485
    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    if-eq v0, v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->freeUpMemory()V

    :cond_0
    return-void
.end method

.method public ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 3

    .line 1109
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    if-eqz v0, :cond_1

    .line 1110
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    .line 1111
    new-instance v1, Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-direct {v1, v2}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 1113
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 1114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;Lcom/metamoji/df/model/ByteData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/Model;->saveAdditionalContent(Lcom/metamoji/df/model/ByteData;)V

    .line 1122
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v2, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v0, v2, p1}, Lcom/metamoji/df/model/ModelManager;->writeModelData(Lcom/metamoji/df/model/ByteData;ILcom/metamoji/df/model/ModelManagerSaveContext;)V

    const/4 p1, 0x0

    .line 1123
    iput-boolean p1, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    return-void

    :catch_0
    move-exception p1

    .line 1118
    const-string v0, "properties serialization was failed: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MD0023"

    const-string v2, "properties serialization was failed"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public equalsToModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public freeUpMemory()V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1135
    iput-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    .line 1139
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    if-nez v0, :cond_1

    .line 1140
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->unloadContent()V

    :cond_1
    return-void
.end method

.method public getAllPropertyNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 1068
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 1069
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->getAllPropertyNamesCore()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 1072
    throw v0
.end method

.method public getChildModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    .line 641
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 643
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->childModelCache:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 650
    throw v0
.end method

.method public getFirstChild()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 587
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/Model;->getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 590
    throw v0
.end method

.method public getLastChild()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 600
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/Model;->getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 603
    throw v0
.end method

.method public getModelID()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/metamoji/df/model/Model;->index:I

    return v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    return-object v0
.end method

.method public getModelType()Ljava/lang/String;
    .locals 1

    .line 1080
    const-string v0, "!type"

    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/Model;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 613
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/Model;->getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 616
    throw v0
.end method

.method public getParent()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 574
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/Model;->getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 577
    throw v0
.end method

.method public getPrevSibling()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 626
    :try_start_0
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/Model;->getModel(Lcom/metamoji/cm/Structured$SInt32LEMember;)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 629
    throw v0
.end method

.method public getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 841
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 842
    instance-of v0, p1, Lcom/metamoji/cm/Blob;

    if-eqz v0, :cond_0

    .line 843
    check-cast p1, Lcom/metamoji/cm/Blob;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 865
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 866
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 867
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 817
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 818
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 819
    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsDouble(Ljava/lang/String;D)D
    .locals 1

    .line 889
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 890
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 891
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getPropertyAsInt(Ljava/lang/String;I)I
    .locals 1

    .line 877
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 878
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 879
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getPropertyAsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 804
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 805
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 806
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 853
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 854
    instance-of v0, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 855
    check-cast p1, Lcom/metamoji/df/model/IModel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 779
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 780
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 781
    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 829
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 830
    instance-of v0, p1, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_0

    .line 831
    check-cast p1, Lcom/metamoji/cm/PointArray;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 791
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->getPropertyRaw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 792
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 793
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVersion()I
    .locals 2

    .line 1088
    const-string v0, "!version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/model/Model;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->hasPreloadedProperty(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return p1

    .line 734
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->readyContent()Z

    .line 735
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 738
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 739
    throw p1
.end method

.method protected importAdditionalContent(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V
    .locals 0

    return-void
.end method

.method public importModelData(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V
    .locals 8

    .line 213
    invoke-direct {p0}, Lcom/metamoji/df/model/Model;->unloadContent()V

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/df/model/Model;->readyContent()Z

    move-result v0

    .line 218
    iget-object v1, p1, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    const-string v2, "!version"

    if-eqz v1, :cond_4

    .line 219
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerImportContext;->getIgnorePropNames()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 223
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 228
    invoke-direct {p0, v3, p2}, Lcom/metamoji/df/model/Model;->importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    iget-object v5, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v6, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v5, v3, v4, v6}, Lcom/metamoji/df/model/ModelManager;->setPreloadedProperty(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 235
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 237
    :cond_3
    iget-object v5, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V

    .line 241
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v3, p0}, Lcom/metamoji/df/model/ModelManager;->addUsedVersionInfo(Lcom/metamoji/df/model/Model;)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v1, p1, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    .line 249
    iget v3, p1, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v3}, Lcom/metamoji/df/model/ModelManager;->getAllPreloadedPropertyNames(I)Ljava/util/List;

    move-result-object v3

    .line 250
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerImportContext;->getIgnorePropNames()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 253
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    .line 257
    :cond_6
    iget v5, p1, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    .line 258
    invoke-direct {p0, v5, p2}, Lcom/metamoji/df/model/Model;->importValue(Ljava/lang/Object;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/lang/Object;

    move-result-object v5

    .line 259
    iget-object v6, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v6, v4}, Lcom/metamoji/df/model/ModelManager;->isPreloadProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 262
    iget-object v6, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v7, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v6, v5, v4, v7}, Lcom/metamoji/df/model/ModelManager;->setPreloadedProperty(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_3

    .line 264
    :cond_7
    iget-object v6, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    if-nez v6, :cond_8

    .line 265
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 267
    :cond_8
    iget-object v6, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/df/model/Model;->rememberContentModified()V

    .line 271
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 272
    iget-object v4, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v4, p0}, Lcom/metamoji/df/model/ModelManager;->addUsedVersionInfo(Lcom/metamoji/df/model/Model;)V

    goto :goto_2

    .line 276
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/Model;->importAdditionalContent(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V

    const/4 p2, 0x1

    .line 277
    iput-boolean p2, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z

    if-eqz v0, :cond_a

    .line 281
    invoke-direct {p1}, Lcom/metamoji/df/model/Model;->unloadContent()V

    :cond_a
    return-void
.end method

.method public insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 694
    invoke-direct {p0, p2}, Lcom/metamoji/df/model/Model;->checkManager(Lcom/metamoji/df/model/IModel;)V

    if-eqz p1, :cond_0

    .line 696
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->checkManager(Lcom/metamoji/df/model/IModel;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    if-eqz p1, :cond_1

    .line 700
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 699
    :goto_0
    invoke-virtual {v0, p2, v1, p1}, Lcom/metamoji/df/model/ModelManager;->insertChildModel(III)V

    return-void
.end method

.method public isOnMemory()Z
    .locals 2

    .line 1158
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 1160
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 1163
    throw v0
.end method

.method protected loadAdditionalContent([BI)V
    .locals 0

    return-void
.end method

.method public purgeMemory(Z)V
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/df/model/ModelManager;->purgeModelMemory(IZ)V

    return-void
.end method

.method protected readyContent()Z
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 114
    :try_start_1
    iget v0, p0, Lcom/metamoji/df/model/Model;->index:I

    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/ModelManager;->readModelData(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Lcom/metamoji/df/model/PlainValueSerializer;

    iget-object v3, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-direct {v1, v3}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    new-instance v3, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v3, v2}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 121
    invoke-virtual {v1, v0, v3}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    invoke-virtual {v3}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 127
    :try_start_3
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 130
    invoke-direct {p0, v1}, Lcom/metamoji/df/model/Model;->castStringToObjectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    .line 132
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/df/model/Model;->loadAdditionalContent([BI)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MD0019"

    const-string v2, "properties should be Map"

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 124
    const-string v1, "properties deserialization was failed: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "MD0018"

    const-string v3, "properties deserialization was failed"

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    .line 136
    :try_start_4
    const-string v1, "An error occured in loading model content."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/Model;->props:Ljava/util/Map;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentLoaded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 146
    throw v0
.end method

.method protected rememberContentModified()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    const/4 v0, 0x1

    .line 63
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/df/model/Model;->contentModified:Z

    .line 64
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0, p0}, Lcom/metamoji/df/model/ModelManager;->rememberModelContentModified(Lcom/metamoji/df/model/Model;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 67
    throw v0
.end method

.method public remove(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 708
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/Model;->checkManager(Lcom/metamoji/df/model/IModel;)V

    .line 710
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->lock()V

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 713
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0

    iget v1, p0, Lcom/metamoji/df/model/Model;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-object v2, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    if-eq v0, v1, :cond_0

    .line 719
    invoke-virtual {v2}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    .line 717
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    iget-object p1, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/Model;->manager:Lcom/metamoji/df/model/ModelManager;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager;->unlock()V

    .line 720
    throw p1
.end method

.method protected saveAdditionalContent(Lcom/metamoji/df/model/ByteData;)V
    .locals 0

    return-void
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 0

    .line 1028
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 0

    .line 1020
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V
    .locals 0

    .line 996
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V
    .locals 0

    .line 988
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 1004
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    .line 962
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 971
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 1012
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 946
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;->setPropertyRaw(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVersion(I)V
    .locals 1

    .line 1096
    const-string v0, "!version"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/Model;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method protected unloadAdditionalContent()V
    .locals 0

    return-void
.end method
