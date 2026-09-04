.class Lcom/metamoji/sd/SdDriveDocumentManager$30$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$30;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

.field final synthetic val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$30;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V
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

    .line 7252
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7252
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7256
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7257
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7261
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v1

    .line 7262
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v4, "template"

    invoke-interface {v3, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 7264
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    invoke-static {v3, v6}, Lcom/metamoji/nt/NtNoteTemplateSettings;->formatTitle(Lcom/metamoji/df/model/IModelManager;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_2

    .line 7269
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v9, v3

    .line 7273
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v6, "title"

    invoke-interface {v3, v6, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7275
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v6, "create"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7277
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v6, "update"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v3, v6, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7279
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$noteTemplateSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    .line 7282
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 7280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 7282
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7283
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$noteTemplateSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteTemplateSettings;->applyToModelMgr(Lcom/metamoji/df/model/IModelManager;)V

    .line 7284
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$noteTemplateSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iget-boolean v1, v1, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasRecordings:Z

    if-nez v1, :cond_4

    .line 7286
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-static {v1, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Z)V

    .line 7291
    :cond_4
    :goto_2
    new-instance v7, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v7}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 7292
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v10

    .line 7293
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->contentsAttributeFromEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    .line 7294
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7295
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v7, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7298
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7299
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-boolean v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$giveTag:Z

    .line 7315
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    if-eqz v4, :cond_7

    .line 7300
    iget-object v4, v6, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$giveTags:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 7301
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$giveTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7302
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 7306
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    .line 7309
    :cond_6
    sget-object v8, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7310
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v9, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v9, v7, v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7311
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7315
    :cond_7
    iget-object v4, v6, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocumentTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 7316
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v6

    .line 7317
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    .line 7321
    :cond_8
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    .line 7324
    :cond_9
    sget-object v8, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7325
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v9, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v9, v7, v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7326
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 7331
    :cond_a
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v2, "tags"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7333
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v0

    .line 7343
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    if-nez v0, :cond_b

    .line 7336
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7337
    new-instance v0, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 7338
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 7339
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 7340
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_6

    .line 7343
    :cond_b
    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v5

    :goto_5
    invoke-static {v1, v0, v3, v2}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 7344
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7348
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v1, "collaboRoomId"

    invoke-interface {v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 7351
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v2, "collaboCompanyId"

    invoke-interface {v1, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7352
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v3, "collaboLastSequence"

    invoke-interface {v2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    .line 7353
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v3

    if-nez v3, :cond_f

    .line 7356
    new-instance v3, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 7357
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 7358
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-eqz v1, :cond_e

    goto :goto_7

    .line 7359
    :cond_e
    const-string v1, ""

    :goto_7
    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 7360
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7363
    :cond_f
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 7364
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$30;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_10
    return-object v5
.end method
