.class Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;
.super Ljava/lang/Object;
.source "NtPasteDataUtil.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelImportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPasteDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportProcImpl"
.end annotation


# instance fields
.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private toDocument:Lcom/metamoji/nt/NtDocument;

.field private toModelManager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toDocument:Lcom/metamoji/nt/NtDocument;

    .line 156
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toModelManager:Lcom/metamoji/df/model/IModelManager;

    .line 157
    iput-object p2, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    .line 159
    iput-object p3, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->extras:Ljava/util/Map;

    return-void
.end method

.method private dropForSchoolLayer(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 271
    const-string v1, "$page"

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 276
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const-string v3, "layerType"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 281
    const-string/jumbo v4, "system:common"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "system:personal"

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    :cond_1
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 287
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->destroy()V

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getOldIdFromIdTable(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 373
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private renewIdentifiersForSchool(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 302
    const-string v1, "$page"

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "pageId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$layer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 311
    const-string v2, "layerType"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 314
    const-string v3, "layerId"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->getOldIdFromIdTable(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 316
    const-string/jumbo v5, "system:common"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    const-string v2, "_[layer-common]"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 319
    :cond_1
    const-string/jumbo v5, "system:personal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 321
    const-string v2, "_[layer-forUser]_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 323
    const-string v2, "_[layer-forGroup]_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :cond_2
    if-gez v2, :cond_5

    .line 326
    const-string v2, "_[layer-forClass]"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 329
    :cond_3
    const-string/jumbo v5, "system:teacher_personal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const-string v2, "_[layer-forTeacherPersonal]_"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :cond_5
    :goto_1
    if-ltz v2, :cond_7

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_7

    .line 342
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$draw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 345
    const-string/jumbo v4, "unitId"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->getOldIdFromIdTable(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_[unit]_draw"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-interface {v3, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 355
    :cond_6
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    goto :goto_2

    .line 361
    :cond_7
    :goto_3
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    return-object p1
.end method


# virtual methods
.method public doImport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    invoke-interface {p1, v0}, Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;->preCheck(Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 182
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->preCheckProc:Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;

    invoke-interface {v2, v1}, Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;->preCheck(Lcom/metamoji/df/model/IModel;)V

    .line 186
    const-string v2, "models"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 190
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibility()Lcom/metamoji/df/controller/ModelCompatibility;

    move-result-object v3

    .line 191
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibilityTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v4

    .line 192
    invoke-virtual {v3, v2, v4}, Lcom/metamoji/df/controller/ModelCompatibility;->checkCompatibility(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v3

    .line 193
    iget-object v4, v3, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v5, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v4, v5, :cond_8

    .line 196
    iget-object v3, v3, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v4, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-eq v3, v4, :cond_7

    .line 202
    new-instance v3, Lcom/metamoji/df/model/ModelManagerImportContext;

    iget-object v4, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toModelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-direct {v3, p1, v4}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 204
    iget-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toModelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 v4, 0x1

    invoke-interface {p1, v2, v4, v3}, Lcom/metamoji/df/model/IModelManager;->importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    .line 208
    iget-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toDocument:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->dropForSchoolLayer(Ljava/util/List;)V

    .line 214
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p1

    .line 215
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v2

    .line 219
    const-string v5, "attachments"

    invoke-interface {v1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 221
    new-instance v6, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v6, v1}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 222
    invoke-virtual {v6}, Lcom/metamoji/df/controller/AttachmentsManager;->getAllTickets()Ljava/util/List;

    move-result-object v6

    .line 223
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 224
    new-instance v7, Lcom/metamoji/df/controller/AttachmentsManager;

    iget-object v8, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toModelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v8}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 225
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8, v5, v3}, Lcom/metamoji/df/controller/AttachmentsManager;->importAttachments(Ljava/util/HashSet;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 231
    iget-object v6, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    invoke-static {v6, p1, v2, v5}, Lcom/metamoji/df/controller/AttachmentsManager;->replaceTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    .line 235
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p1

    .line 236
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v2

    .line 237
    iget-object v5, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    invoke-static {v5, p1, v2, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->renewIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->renewIdentifiersForSchool(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->extras:Ljava/util/Map;

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 248
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    const-string v5, "extra_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 252
    instance-of v6, v5, Lcom/metamoji/df/model/IModel;

    if-eqz v6, :cond_5

    .line 253
    iget-object v6, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->toModelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v6, v5, v4, v3}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 255
    :cond_5
    iget-object v6, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->extras:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 259
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->extras:Ljava/util/Map;

    const-string v1, "conv_unit"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 198
    :cond_7
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    const-string v1, "AP0026"

    const-string v2, "MMJDfModelCompatibility checkCompatibility:traverser: returns CANTREAD."

    invoke-direct {p1, v1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 195
    :cond_8
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0025"

    const-string v1, "converting version was failed."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_9
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

    .line 167
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->result:Ljava/util/List;

    return-object v0
.end method
