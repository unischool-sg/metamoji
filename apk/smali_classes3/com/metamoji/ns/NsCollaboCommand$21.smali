.class Lcom/metamoji/ns/NsCollaboCommand$21;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCreateCollaboFileCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->uploadCollaboFileToGalleryWithCompletionBlock(Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1619
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$completionAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileCompleted(ZLjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1627
    :cond_0
    new-instance p1, Lcom/metamoji/ns/NsCollaboCommand$21$1;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ns/NsCollaboCommand$21$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$21;Ljava/lang/String;)V

    .line 1641
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 1645
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v1

    .line 1646
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1647
    new-instance v2, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v2}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 1649
    :try_start_0
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 1650
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 1651
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->getRoomId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    invoke-virtual {v2}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    .line 1654
    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1660
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/NsCollaboCommand$21$2;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/NsCollaboCommand$21$2;-><init>(Lcom/metamoji/ns/NsCollaboCommand$21;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 1679
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/dvm/DvmUtil;->getDocumentIconImageFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1681
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1682
    new-instance v1, Lcom/metamoji/cm/Blob;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v2}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 1683
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    .line 1687
    :cond_2
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$completionAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

    invoke-direct {v1, p1, v3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;-><init>(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V

    .line 1688
    iput-object v0, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->roomId:Ljava/lang/String;

    .line 1689
    iput-object p2, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->shareFile:Ljava/lang/String;

    .line 1690
    iput-object v2, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->thumbnailData:[B

    .line 1691
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->title:Ljava/lang/String;

    .line 1692
    invoke-virtual {v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->doInBackground()V

    return-void
.end method
