.class Lcom/metamoji/nt/NtNoteController$37;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$currentPageToLast:Z

.field final synthetic val$doInBackgroundTask:Z

.field final synthetic val$extras:Ljava/util/Map;

.field final synthetic val$pageIndex:I

.field final synthetic val$pageModels:Ljava/util/List;

.field final synthetic val$place:Ljava/lang/String;

.field final synthetic val$thumbnailUpdate:Z


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;IZLjava/util/Map;ZLjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
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

    .line 5299
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    iput p3, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    iput-boolean p4, p0, Lcom/metamoji/nt/NtNoteController$37;->val$thumbnailUpdate:Z

    iput-object p5, p0, Lcom/metamoji/nt/NtNoteController$37;->val$extras:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/metamoji/nt/NtNoteController$37;->val$currentPageToLast:Z

    iput-object p7, p0, Lcom/metamoji/nt/NtNoteController$37;->val$place:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/metamoji/nt/NtNoteController$37;->val$doInBackgroundTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 5305
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5309
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    new-instance v3, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;

    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {v3, v4, v1}, Lcom/metamoji/nt/NtNoteController$NoteNoNeedUpdatePageThumbnailUndo;-><init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController-IA;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 5311
    :goto_0
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->readyCanonicalPageList()V

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 5317
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    const-string v4, "addpagesundo"

    invoke-static {v1, v4, v3}, Lcom/metamoji/nt/NtNoteController$NoteUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 5318
    const-string v4, "a"

    iget-object v5, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    invoke-interface {v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 5319
    const-string v4, "i"

    iget v5, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    invoke-interface {v1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 5321
    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v4

    .line 5322
    iget v5, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    if-ge v5, v4, :cond_1

    .line 5323
    iget-object v5, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 5325
    :cond_1
    const-string v5, "p"

    invoke-interface {v1, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 5328
    :cond_2
    iget v4, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    .line 5331
    iget-object v5, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v5

    .line 5332
    invoke-interface {v5, v3}, Lcom/metamoji/nt/INtEditor;->setStopUpdateListLabel(Z)V

    const/4 v6, 0x0

    .line 5336
    :try_start_0
    iget-object v7, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/df/model/IModel;

    add-int/lit8 v4, v4, 0x1

    .line 5338
    iget-object v9, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v9, v4, v8}, Lcom/metamoji/nt/NtNoteController;->insertPageAt(ILcom/metamoji/df/model/IModel;)V

    .line 5339
    iget-object v9, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v9}, Lcom/metamoji/nt/NtNoteController;->access$100(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/metamoji/df/controller/DfDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v8

    const-class v9, Lcom/metamoji/nt/NtPageController;

    invoke-static {v8, v9}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/nt/NtPageController;

    if-eqz v8, :cond_3

    .line 5342
    iget-boolean v9, p0, Lcom/metamoji/nt/NtNoteController$37;->val$thumbnailUpdate:Z

    invoke-virtual {v8, v9}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    goto :goto_1

    .line 5347
    :cond_4
    iget-object v7, p0, Lcom/metamoji/nt/NtNoteController$37;->val$extras:Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 5349
    iget-object v8, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget v9, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    invoke-virtual {v8, v7, v9}, Lcom/metamoji/nt/NtNoteController;->applyPasteboardExtras(Ljava/util/Map;I)V

    .line 5351
    iget-object v7, p0, Lcom/metamoji/nt/NtNoteController$37;->val$extras:Ljava/util/Map;

    const-string v8, "conv_unit"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 5352
    iget-object v8, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/df/model/IModel;

    .line 5353
    iget-object v10, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v10}, Lcom/metamoji/nt/NtNoteController;->access$200(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/metamoji/df/controller/DfDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v9

    check-cast v9, Lcom/metamoji/nt/NtPageController;

    .line 5354
    invoke-virtual {v9}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v10

    .line 5355
    invoke-static {v10, v7}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->oldPageIdFromNewPageId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 5356
    iget-object v11, p0, Lcom/metamoji/nt/NtNoteController$37;->val$extras:Ljava/util/Map;

    .line 5357
    invoke-static {v10}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeySelectorWithSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;

    move-result-object v12

    .line 5358
    invoke-static {v10}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->extraKeyConverterRemoveSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;

    move-result-object v10

    .line 5356
    invoke-static {v11, v12, v10}, Lcom/metamoji/nt/NtPasteboardExtrasUtil;->convertKey(Ljava/util/Map;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;)Ljava/util/Map;

    move-result-object v10

    .line 5359
    invoke-virtual {v9, v10}, Lcom/metamoji/nt/NtPageController;->applyPasteboardExtras(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 5366
    invoke-virtual {v2, v1, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 5370
    :cond_6
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$37;->val$currentPageToLast:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5373
    iget-object v7, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-eqz v1, :cond_7

    .line 5371
    :try_start_1
    invoke-virtual {v7, v4}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    goto :goto_3

    .line 5373
    :cond_7
    iget v1, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    add-int/2addr v1, v3

    invoke-virtual {v7, v1}, Lcom/metamoji/nt/NtNoteController;->setCurrentPageIndex(I)V

    .line 5377
    :goto_3
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$37;->val$place:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 5378
    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-static {v4, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mscrollWhenPageChange(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5384
    :cond_8
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_9

    .line 5382
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_4

    .line 5384
    :cond_9
    invoke-static {v1}, Lcom/metamoji/nt/NtNoteController;->access$300(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 5388
    :goto_4
    invoke-interface {v5, v6}, Lcom/metamoji/nt/INtEditor;->setStopUpdateListLabel(Z)V

    .line 5389
    invoke-interface {v5}, Lcom/metamoji/nt/INtEditor;->updatePageLabel()V

    .line 5400
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$37;->val$doInBackgroundTask:Z

    invoke-static {v0, v3, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mprocessAfterCurrentPageChanged(Lcom/metamoji/nt/NtNoteController;ZZ)V

    .line 5405
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5406
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;

    move-result-object v0

    .line 5407
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageModels:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget v3, p0, Lcom/metamoji/nt/NtNoteController$37;->val$pageIndex:I

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;->insertPageModels(Ljava/util/List;Ljava/lang/String;)V

    .line 5408
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->sendInsertPagesDirection(Lcom/metamoji/nt/direction/note/NtInsertPagesDirectionData;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v1

    .line 5384
    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController$37;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-nez v0, :cond_b

    .line 5382
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_5

    .line 5384
    :cond_b
    invoke-static {v4}, Lcom/metamoji/nt/NtNoteController;->access$300(Lcom/metamoji/nt/NtNoteController;)Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 5388
    :goto_5
    invoke-interface {v5, v6}, Lcom/metamoji/nt/INtEditor;->setStopUpdateListLabel(Z)V

    .line 5389
    invoke-interface {v5}, Lcom/metamoji/nt/INtEditor;->updatePageLabel()V

    .line 5390
    throw v1
.end method
