.class Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;
.super Ljava/lang/Object;
.source "NtDocumentEditEngineForLibrary.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelExportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->makeNewLibraryDocument(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/Blob;Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dictionary:Ljava/util/Map;

.field final synthetic val$rootModelCreator:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;

.field final synthetic val$thumbnail:Lcom/metamoji/cm/Blob;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;Ljava/util/Map;Lcom/metamoji/cm/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$rootModelCreator:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;

    iput-object p2, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$dictionary:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$thumbnail:Lcom/metamoji/cm/Blob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$rootModelCreator:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;

    invoke-interface {v0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;->perform(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 364
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 367
    const-string v1, "docmeta"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 368
    const-string v2, "docMetaData"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 371
    const-string v1, "doclib"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 372
    const-string v2, "dic"

    iget-object v3, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$dictionary:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 373
    const-string v2, "docLibrary"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 376
    const-string v1, "docthumb"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 377
    const-string/jumbo v1, "v"

    iget-object v2, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;->val$thumbnail:Lcom/metamoji/cm/Blob;

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 378
    const-string v1, "docThumbnail"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
