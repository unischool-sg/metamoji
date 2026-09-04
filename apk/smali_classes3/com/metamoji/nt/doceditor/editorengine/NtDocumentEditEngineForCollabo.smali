.class public Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;
.super Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;
.source "NtDocumentEditEngineForCollabo.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public collaboSettings()Lcom/metamoji/ns/NsCollaboSettings;
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->getDocSettingsManager()Lcom/metamoji/df/controller/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaCompanyId()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->collaboSettings()Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getCompanyId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaHasOfflineLayer()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->hasOfflineEditLayerForRootModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetaLastSequence()Ljava/lang/Long;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->collaboSettings()Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->lastReceivedSequenceNo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaProtected()Z
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->collaboSettings()Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getShareType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    const-string v0, "forSchoolWithDeadline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public getMetaRoomId()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->collaboSettings()Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeNewDocument()V
    .locals 3

    .line 31
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0071"

    const-string v2, "cannot create new collabo document."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 44
    const-string v0, "collaboCompanyId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->getMetaCompanyId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    const-string v0, "collaboRoomId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->getMetaRoomId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    const-string v0, "collaboLastSequence"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->getMetaLastSequence()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    const-string v0, "offlineLayer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;->getMetaHasOfflineLayer()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 56
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
