.class Lcom/metamoji/sd/SdDriveDocumentManager$13$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$13;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

.field final synthetic val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

.field final synthetic val$entityId:Lcom/metamoji/sd/SdValue;

.field final synthetic val$isSystem:Lcom/metamoji/sd/SdValue;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$13;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2968
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$isSystem:Lcom/metamoji/sd/SdValue;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$entityId:Lcom/metamoji/sd/SdValue;

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

    .line 2968
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->call()Ljava/lang/Void;

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

    .line 2973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2974
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 2975
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2981
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    const-string/jumbo v2, "update"

    const-string v3, "create"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2982
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 2983
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    goto :goto_1

    :cond_1
    move-object v1, v4

    move-object v5, v1

    :goto_1
    if-nez v1, :cond_2

    .line 2986
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    :cond_2
    if-nez v5, :cond_3

    .line 2988
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    .line 2991
    :cond_3
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2993
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-static {v5}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2995
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v3, "mimeType"

    invoke-interface {v2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 2996
    invoke-static {v10}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isSystemFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2997
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$isSystem:Lcom/metamoji/sd/SdValue;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 3000
    :cond_4
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$title:Ljava/lang/String;

    const-string/jumbo v3, "title"

    if-nez v2, :cond_5

    .line 3001
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    .line 3003
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$title:Ljava/lang/String;

    :goto_2
    move-object v9, v2

    .line 3005
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v2, v3, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3008
    new-instance v7, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v7}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 3009
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-static {v2, v4}, Lcom/metamoji/sd/SdUtils;->contentsAttributeFromEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    .line 3011
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v6, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3012
    invoke-virtual {v7, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 3013
    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 3016
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-boolean v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$copiedShareFlg:Z

    if-eqz v1, :cond_6

    .line 3017
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->putOnBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3019
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    invoke-static {v2, v7, v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 3021
    invoke-static {v7}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    goto :goto_3

    .line 3024
    :cond_6
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$isSystem:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3025
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->putOnBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3027
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    invoke-static {v2, v7, v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 3029
    invoke-static {v7}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 3033
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$entityId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 3034
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMODocument;->getLocalOptions()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->putOnBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    .line 3036
    :cond_8
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v7, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3041
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$tags:Ljava/util/List;

    if-eqz v5, :cond_b

    .line 3042
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$tags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3043
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    .line 3047
    :cond_9
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_4

    .line 3050
    :cond_a
    sget-object v8, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v9, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v9, v7, v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3052
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3057
    :cond_b
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v3, "tags"

    invoke-interface {v0, v3, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3063
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    .line 3073
    :cond_c
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    invoke-static {v1, v0, v2, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3074
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3078
    :goto_5
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v1, "collaboRoomId"

    invoke-interface {v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 3081
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v2, "collaboCompanyId"

    invoke-interface {v1, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3082
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v3, "collaboLastSequence"

    invoke-interface {v2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    .line 3083
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v3

    if-nez v3, :cond_e

    .line 3086
    new-instance v3, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 3087
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 3088
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-eqz v1, :cond_d

    goto :goto_6

    .line 3089
    :cond_d
    const-string v1, ""

    :goto_6
    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3093
    :cond_e
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 3094
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$13;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_f
    return-object v4
.end method
