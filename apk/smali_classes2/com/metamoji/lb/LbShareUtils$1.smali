.class Lcom/metamoji/lb/LbShareUtils$1;
.super Ljava/lang/Object;
.source "LbShareUtils.java"

# interfaces
.implements Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbShareUtils;->importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$modelType:Ljava/lang/String;

.field final synthetic val$modelVersion:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/metamoji/lb/LbShareUtils$1;->val$modelType:Ljava/lang/String;

    iput p2, p0, Lcom/metamoji/lb/LbShareUtils$1;->val$modelVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/lb/LbShareUtils$1;->val$modelType:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 67
    iget v0, p0, Lcom/metamoji/lb/LbShareUtils$1;->val$modelVersion:I

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-object p1
.end method
