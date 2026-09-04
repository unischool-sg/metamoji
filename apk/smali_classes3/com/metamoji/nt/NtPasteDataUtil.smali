.class public Lcom/metamoji/nt/NtPasteDataUtil;
.super Ljava/lang/Object;
.source "NtPasteDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;,
        Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;,
        Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;,
        Lcom/metamoji/nt/NtPasteDataUtil$ModelProp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 87
    new-instance p1, Lcom/metamoji/nt/NtPasteDataUtil$1;

    invoke-direct {p1, p2, p0, p3}, Lcom/metamoji/nt/NtPasteDataUtil$1;-><init>(Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/List;Ljava/util/Map;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/metamoji/df/model/ModelUtils;->exportModelsToFile(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static importAttachments(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/model/ModelManagerImportContext;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 442
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 443
    const-string v1, "attachments"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 445
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 448
    :cond_1
    new-instance v1, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v1, p0}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    if-nez p3, :cond_2

    .line 452
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p3

    :cond_2
    if-nez p4, :cond_3

    .line 455
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object p4

    .line 457
    :cond_3
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 458
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 459
    invoke-static {v2, p3, p4, p0}, Lcom/metamoji/df/controller/AttachmentsManager;->collectTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;

    goto :goto_0

    .line 463
    :cond_4
    invoke-virtual {v1, p0, v0, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->importAttachments(Ljava/util/HashSet;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 416
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtPasteDataUtil;->importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;-><init>(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)V

    .line 420
    invoke-static {v0, p0}, Lcom/metamoji/df/model/ModelUtils;->importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/io/File;)V

    .line 421
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPasteDataUtil$ImportProcImpl;->getResult()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static renewIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    invoke-direct {v0, p2, p3}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    .line 478
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/model/IModel;

    .line 479
    invoke-virtual {p1, p2, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
