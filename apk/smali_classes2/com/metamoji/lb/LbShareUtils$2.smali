.class Lcom/metamoji/lb/LbShareUtils$2;
.super Ljava/lang/Object;
.source "LbShareUtils.java"

# interfaces
.implements Lcom/metamoji/df/model/ModelUtils$IModelImportProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbShareUtils;->getBody(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$outFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/metamoji/lb/LbShareUtils$2;->val$outFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doImport(Lcom/metamoji/df/model/IModelManager;)V
    .locals 1

    .line 187
    invoke-static {p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->bodyFromLibraryDocument(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/metamoji/lb/LbShareUtils$2;->val$outFile:Ljava/io/File;

    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    :cond_0
    return-void
.end method
