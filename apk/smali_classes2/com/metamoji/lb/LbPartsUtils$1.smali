.class Lcom/metamoji/lb/LbPartsUtils$1;
.super Ljava/lang/Object;
.source "LbPartsUtils.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelExportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbPartsUtils;->exportPartFileFormModelsAsync(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$childModels:Ljava/util/List;

.field final synthetic val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;

    iput-object p2, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$childModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 5

    .line 129
    invoke-static {p1}, Lcom/metamoji/lb/LbPartsUtils;->makePartModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;

    invoke-interface {v1, p1}, Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;->create(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 131
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 132
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 134
    iget-object v2, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$childModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    new-instance v2, Lcom/metamoji/df/model/ModelManagerImportContext;

    iget-object v3, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$childModels:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 137
    new-instance v3, Lcom/metamoji/lb/LbPartsUtils$1$1;

    invoke-direct {v3, p0}, Lcom/metamoji/lb/LbPartsUtils$1$1;-><init>(Lcom/metamoji/lb/LbPartsUtils$1;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/df/model/ModelManagerImportContext;->setIgnorePropNames(Ljava/util/List;)V

    .line 142
    iget-object v3, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$childModels:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4, v2}, Lcom/metamoji/df/model/IModelManager;->importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;

    move-result-object p1

    .line 143
    const-string v3, "models"

    invoke-interface {v1, v3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 145
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/metamoji/lb/LbPartsUtils$1;->val$childModels:Ljava/util/List;

    invoke-static {v0, v4, v2, v1, v3}, Lcom/metamoji/nt/NtPasteDataUtil;->importAttachments(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object v0

    .line 152
    invoke-static {p1, v1, v3, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->replaceTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
