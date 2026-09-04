.class Lcom/metamoji/nt/NtPasteDataUtil$1;
.super Ljava/lang/Object;
.source "NtPasteDataUtil.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelExportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPasteDataUtil;->exportModelsAsFile(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/Map;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extras:Ljava/util/Map;

.field final synthetic val$models:Ljava/util/List;

.field final synthetic val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;

    iput-object p2, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$models:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$extras:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$rootModelCreator:Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;

    invoke-interface {v0, p1}, Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;->create(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 91
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 92
    iget-object v1, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$models:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 93
    new-instance v1, Lcom/metamoji/df/model/ModelManagerImportContext;

    iget-object v2, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$models:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelManagerImportContext;->setIgnorePropNames(Ljava/util/List;)V

    .line 95
    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManagerImportContext;->getIgnorePropNames()Ljava/util/List;

    move-result-object v2

    const-string v3, "?editstatus"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$models:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v1}, Lcom/metamoji/df/model/IModelManager;->importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;

    move-result-object v2

    .line 99
    const-string v4, "models"

    invoke-interface {v0, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 100
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->add(Ljava/util/List;)V

    .line 103
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v4

    .line 104
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v5

    .line 107
    iget-object v6, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$models:Ljava/util/List;

    invoke-static {v0, v6, v1, v4, v5}, Lcom/metamoji/nt/NtPasteDataUtil;->importAttachments(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object v6

    .line 110
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/df/model/IModel;

    .line 111
    invoke-static {v7, v4, v5, v6}, Lcom/metamoji/df/controller/AttachmentsManager;->replaceTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$extras:Ljava/util/Map;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    const-string v5, "extra_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/metamoji/nt/NtPasteDataUtil$1;->val$extras:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 120
    instance-of v6, v5, Lcom/metamoji/df/model/IModel;

    if-eqz v6, :cond_2

    .line 121
    check-cast v5, Lcom/metamoji/df/model/IModel;

    .line 122
    invoke-interface {p1, v5, v3, v1}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 123
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 124
    :cond_2
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 125
    check-cast v5, Ljava/util/Map;

    .line 126
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 127
    :cond_3
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_1

    .line 128
    check-cast v5, Ljava/util/List;

    .line 129
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method
