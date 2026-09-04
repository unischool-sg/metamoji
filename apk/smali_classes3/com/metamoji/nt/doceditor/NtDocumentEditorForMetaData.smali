.class public Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;
.super Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;
.source "NtDocumentEditorForMetaData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/metamoji/nt/NtFactoryMaps;->mimeTypeOfDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 26
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz p1, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edit engine not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP0046"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0045"

    const-string v1, "Unknown model format."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForMetaData;->dispose()V

    return-void
.end method

.method public openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    return-void
.end method
