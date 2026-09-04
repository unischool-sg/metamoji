.class public Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForUnknown;
.super Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
.source "NtDocumentEditEngineForUnknown.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finalizeEditingData()V
    .locals 0

    return-void
.end method

.method public makeNewDocument()V
    .locals 3

    .line 27
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0072"

    const-string v2, "cannot create new unknown document."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
