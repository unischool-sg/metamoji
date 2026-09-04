.class public Lcom/metamoji/df/controller/ModelCompatibility;
.super Ljava/lang/Object;
.source "ModelCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;,
        Lcom/metamoji/df/controller/ModelCompatibility$Result;
    }
.end annotation


# instance fields
.field private _checkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/IModelCompatibilityChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_checkers(Lcom/metamoji/df/controller/ModelCompatibility;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/controller/ModelCompatibility;->_checkers:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility;->_checkers:Ljava/util/Map;

    return-void
.end method

.method private newCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
    .locals 2

    .line 256
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$1;

    invoke-direct {v0, p0}, Lcom/metamoji/df/controller/ModelCompatibility$1;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;)V

    .line 289
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;Lcom/metamoji/df/controller/IModelVisitor;)V

    return-object v1
.end method

.method private newConvertContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
    .locals 2

    .line 324
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$3;

    invoke-direct {v0, p0}, Lcom/metamoji/df/controller/ModelCompatibility$3;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;)V

    .line 353
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;Lcom/metamoji/df/controller/IModelVisitor;)V

    return-object v1
.end method

.method private newDetailCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
    .locals 2

    .line 298
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility$2;

    invoke-direct {v0, p0}, Lcom/metamoji/df/controller/ModelCompatibility$2;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;)V

    .line 315
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;-><init>(Lcom/metamoji/df/controller/ModelCompatibility;Lcom/metamoji/df/controller/IModelVisitor;)V

    return-object v1
.end method


# virtual methods
.method addToUsedVersionInfo(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 361
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p2

    if-ltz p2, :cond_1

    .line 365
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 367
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public checkCompatibility(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelCompatibility;->newCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setOutUsedVersionInfo(Ljava/util/Map;)V

    .line 103
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>()V

    iput-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    .line 104
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p2

    iget-object p2, p2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne p2, v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->setUsedVersionInfo(Ljava/util/Map;)V

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1
.end method

.method public checkCompatibility(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            ")",
            "Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelCompatibility;->newCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>()V

    iput-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p2, v3, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 188
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1

    .line 167
    :cond_3
    :goto_2
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object p2, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, p2}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method

.method public checkCompatibilityDetail(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 3

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/ModelCompatibility;->checkCompatibility(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v0

    .line 126
    iget-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v2, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v1, v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelCompatibility;->newDetailCheckContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>()V

    iput-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    .line 131
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 132
    iget-object p1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public convert(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelCompatibility;->newConvertContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>()V

    iput-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->setOutUsedVersionInfo(Ljava/util/Map;)V

    .line 147
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 148
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p2

    iget-object p2, p2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne p2, v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getOutUsedVersionInfo()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->setUsedVersionInfo(Ljava/util/Map;)V

    .line 152
    iget-object p1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isSaveOnEnd:Z

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            ")",
            "Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/metamoji/df/controller/ModelCompatibility;->newConvertContext()Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {v1}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>()V

    iput-object v1, v0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 206
    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 207
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1
.end method

.method public installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility;->_checkers:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
