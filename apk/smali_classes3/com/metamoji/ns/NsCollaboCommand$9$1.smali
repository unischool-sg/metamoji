.class Lcom/metamoji/ns/NsCollaboCommand$9$1;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$IPrepareDocumentEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$9;->action(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$9;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 829
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 14

    .line 833
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$snapShotDicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$snapShotDicList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 835
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v3, v3, Lcom/metamoji/ns/NsCollaboCommand$9;->val$snapShotDicList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object v13, v2

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v4, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$docID:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v5, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$basicSettings:Lcom/metamoji/ns/NsCollaboBasicSettings;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v6, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$documentPasswordHash:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v7, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$documentTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v8, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$driveID:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v9, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$distributeSharedDriveId:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v10, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$distributeSharedDriveTags:Ljava/util/List;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v11, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$groupList:Ljava/util/List;

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-boolean v12, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$submitByStudent:Z

    invoke-static/range {v4 .. v13}, Lcom/metamoji/ns/NsCollaboCommand;->collaborizeNote(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 842
    const-string v3, "newDocID"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 843
    const-string v4, "copiedDocID"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 846
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_DISTRIBUTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v5, v2, v2, v2}, Lcom/metamoji/ns/NsCollaboManager;->setDistributeCommandInfo(Lcom/metamoji/nt/NtCommand;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 849
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$ret:Ljava/util/HashMap;

    const-string v2, "error"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$driveID:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboCommand$9;->val$docID:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object v0

    .line 854
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v5

    .line 860
    iget-object v6, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    if-nez v0, :cond_2

    .line 857
    iget-object v0, v6, Lcom/metamoji/ns/NsCollaboCommand$9;->val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtMRUDocList$MinItem;->SetDocId(Ljava/lang/String;)V

    goto :goto_1

    .line 860
    :cond_2
    iget-object v6, v6, Lcom/metamoji/ns/NsCollaboCommand$9;->val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

    iget-object v7, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v7, v7, Lcom/metamoji/ns/NsCollaboCommand$9;->val$distributeSharedDriveId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/metamoji/nt/NtMRUDocList$MinItem;->SetDriveId(Ljava/lang/String;)V

    .line 861
    iget-object v6, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v6, v6, Lcom/metamoji/ns/NsCollaboCommand$9;->val$mruDocListItem:Lcom/metamoji/nt/NtMRUDocList$MinItem;

    invoke-virtual {v6, v0}, Lcom/metamoji/nt/NtMRUDocList$MinItem;->SetDocId(Ljava/lang/String;)V

    .line 865
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$deleteCurrentDoc:Z

    if-eqz v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$driveID:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v6, v6, Lcom/metamoji/ns/NsCollaboCommand$9;->val$docID:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/metamoji/dvm/DvmUtil;->deleteDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$9$1;->this$0:Lcom/metamoji/ns/NsCollaboCommand$9;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$9;->val$docID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/metamoji/nt/NtMRUDocList;->removeUsedDoc(Ljava/lang/String;)V

    .line 885
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->stopSync(Z)V

    .line 888
    invoke-static {v2, v3, v1}, Lcom/metamoji/dvm/DvmUtil;->editDocument(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object v0
.end method
