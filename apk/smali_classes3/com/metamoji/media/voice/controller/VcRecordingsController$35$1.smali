.class Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->action(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

.field final synthetic val$mediaList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController$35;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3236
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->val$mediaList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3240
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->val$mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 3241
    invoke-static {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->ticketForMediaData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 3242
    const-string/jumbo v6, "status"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3244
    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v7, v7, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v7, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 3248
    :cond_1
    const-string v7, "normal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3250
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v3, v3, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v3, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isHiddenRecording(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3251
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v2, v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v2, v5, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    move v2, v4

    .line 3255
    :cond_2
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v3

    .line 3256
    invoke-virtual {v3, v5}, Lcom/metamoji/media/MediaUploadManager2;->uploadFileDataForTicket(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3257
    invoke-virtual {v3, v5}, Lcom/metamoji/media/MediaUploadManager2;->removeUploadFileDataForTicket(Ljava/lang/String;)V

    goto :goto_0

    .line 3260
    :cond_3
    const-string v7, "deleted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "clean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 3276
    :cond_4
    const-string v3, "regist"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 3279
    :cond_5
    const-string/jumbo v3, "uploading"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 3282
    :cond_6
    const-string/jumbo v3, "uploadError"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3261
    :cond_7
    :goto_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v6

    .line 3262
    invoke-virtual {v6}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3265
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v2, v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {v2, v5, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->setHiddenRecording(Ljava/lang/String;Z)V

    .line 3268
    const-string v2, "registUserId"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3269
    iget-object v3, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3271
    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v2, v2, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v2, v5, v4, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->removeRecording(Ljava/lang/String;ZZ)Z

    :cond_8
    move v2, v4

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_b

    .line 3288
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v0, v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    .line 3292
    :cond_a
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35$1;->this$1:Lcom/metamoji/media/voice/controller/VcRecordingsController$35;

    iget-object v0, v0, Lcom/metamoji/media/voice/controller/VcRecordingsController$35;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 3295
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3297
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V

    :cond_b
    :goto_2
    return-void
.end method
