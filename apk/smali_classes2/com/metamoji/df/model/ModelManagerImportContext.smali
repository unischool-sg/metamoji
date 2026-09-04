.class public Lcom/metamoji/df/model/ModelManagerImportContext;
.super Ljava/lang/Object;
.source "ModelManagerImportContext.java"


# instance fields
.field private destManager:Lcom/metamoji/df/model/IModelManager;

.field private ignorePropNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private indexTable:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->destManager:Lcom/metamoji/df/model/IModelManager;

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->ignorePropNames:Ljava/util/List;

    .line 31
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->indexTable:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method getDestModelCorrespondingTo(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 55
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->indexTable:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->destManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->getModelByID(I)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->destManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->indexTable:Landroid/util/SparseIntArray;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    move-object v0, v1

    check-cast v0, Lcom/metamoji/df/model/Model;

    .line 65
    check-cast p1, Lcom/metamoji/df/model/Model;

    .line 67
    invoke-virtual {v0, p1, p0}, Lcom/metamoji/df/model/Model;->importModelData(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V

    return-object v1
.end method

.method public getIgnorePropNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->ignorePropNames:Ljava/util/List;

    return-object v0
.end method

.method public setIgnorePropNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManagerImportContext;->ignorePropNames:Ljava/util/List;

    return-void
.end method
