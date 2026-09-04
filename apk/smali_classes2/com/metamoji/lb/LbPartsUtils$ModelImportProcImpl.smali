.class Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;
.super Ljava/lang/Object;
.source "LbPartsUtils.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelImportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lb/LbPartsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModelImportProcImpl"
.end annotation


# instance fields
.field _collectModelsProc:Lcom/metamoji/lb/LbPartsUtils$ICollectModels;

.field _preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

.field _result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field _toModelManager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Lcom/metamoji/lb/LbPartsUtils$ICollectModels;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_result:Ljava/util/List;

    .line 242
    iput-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_toModelManager:Lcom/metamoji/df/model/IModelManager;

    .line 243
    iput-object p2, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    .line 244
    iput-object p3, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_collectModelsProc:Lcom/metamoji/lb/LbPartsUtils$ICollectModels;

    return-void
.end method


# virtual methods
.method public doImport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;->preCheck(Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 252
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    invoke-interface {v2, v1}, Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;->preCheck(Lcom/metamoji/df/model/IModel;)V

    .line 257
    iget-object v2, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_collectModelsProc:Lcom/metamoji/lb/LbPartsUtils$ICollectModels;

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v2, v1}, Lcom/metamoji/lb/LbPartsUtils$ICollectModels;->collect(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 260
    const-string p1, "failed collect models at collectModelsProc"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void

    .line 264
    :cond_1
    const-string v2, "models"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 267
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 268
    new-instance v2, Lcom/metamoji/df/model/ModelManagerImportContext;

    iget-object v3, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_toModelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-direct {v2, p1, v3}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 271
    iget-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_toModelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3, v2}, Lcom/metamoji/df/model/IModelManager;->importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_result:Ljava/util/List;

    .line 273
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p1

    .line 274
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v3

    .line 277
    iget-object v4, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_toModelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v4}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4, v1, v2, p1, v3}, Lcom/metamoji/nt/NtPasteDataUtil;->importAttachments(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_result:Ljava/util/List;

    invoke-static {v2, p1, v3, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->replaceTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    .line 283
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p1

    .line 284
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_result:Ljava/util/List;

    invoke-static {v2, p1, v1, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->renewIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)Ljava/util/Map;

    :cond_3
    return-void
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->_result:Ljava/util/List;

    return-object v0
.end method
