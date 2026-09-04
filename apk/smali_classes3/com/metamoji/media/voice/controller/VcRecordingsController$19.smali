.class Lcom/metamoji/media/voice/controller/VcRecordingsController$19;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtNoteController;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$pageIndex:I

.field final synthetic val$pageModels:Ljava/util/List;

.field final synthetic val$voiceModels:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/nt/NtNoteController;Ljava/util/Map;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1533
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$voiceModels:Ljava/util/Map;

    iput-object p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageModels:Ljava/util/List;

    iput p5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1536
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v0

    .line 1537
    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    .line 1539
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 1540
    iget-object v3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$voiceModels:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1542
    iget-object v5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$voiceModels:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/df/model/IModel;

    .line 1543
    const-string v6, "$url"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1544
    const-string v7, "$cacheFilename"

    invoke-interface {v5, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1545
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v6, :cond_1

    .line 1547
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {v1, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1551
    iget-object v6, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageModels:Ljava/util/List;

    iget v8, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageIndex:I

    invoke-virtual {v6, v5, v7, v0, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->correctPastedPageId(Lcom/metamoji/df/model/IModel;Ljava/util/List;Ljava/util/List;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1552
    iget-object v6, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->addTicket(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/Blob;)V

    goto :goto_0

    .line 1558
    :cond_2
    const-string v6, "$indexes"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 1559
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1560
    invoke-virtual {v1, v4, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 1563
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1564
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1565
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1567
    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-object v9, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageModels:Ljava/util/List;

    iget v10, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->val$pageIndex:I

    invoke-virtual {v7, v8, v9, v0, v10}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->correctIndexPastedPageId(Ljava/util/Map;Ljava/util/List;Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1568
    iget-object v7, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v7, v8, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->addIndex(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 1573
    :cond_5
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1574
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$19;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket()V

    .line 1576
    :cond_6
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1578
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didUpdateModel(Z)V

    :cond_7
    return-void
.end method
