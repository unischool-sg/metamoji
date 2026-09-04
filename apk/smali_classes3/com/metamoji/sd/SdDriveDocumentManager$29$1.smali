.class Lcom/metamoji/sd/SdDriveDocumentManager$29$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$29;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$29;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6953
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

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

    .line 6953
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 6955
    iget-object v1, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v1

    .line 6957
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$metaValue:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 6959
    const-string v3, "contentsUpdateUserId"

    const-string v4, "contentsCreateUserId"

    const-string v5, "contentsRevision"

    const-string v6, "contentsUpdate"

    const-string v7, "contentsCreate"

    const-string v8, "contentsMimeType"

    const-string v9, ""

    const-string/jumbo v10, "titleRevision"

    const-string/jumbo v11, "titleUpdate"

    const-string/jumbo v12, "title"

    const-string v13, "contentsAttribute"

    const/16 v16, 0x0

    .line 6978
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 6966
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-nez v1, :cond_2

    .line 6961
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    move-object/from16 v18, v3

    .line 6962
    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setId(Ljava/lang/String;)V

    .line 6963
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 6964
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 6965
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 6966
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 6968
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 6969
    invoke-virtual {v1, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 6970
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 6972
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 6973
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 6974
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 6975
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 6977
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6978
    invoke-virtual {v1, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 6980
    :cond_0
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    :goto_0
    move-object/from16 v19, v9

    const/4 v3, 0x0

    .line 6984
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v9, v18

    .line 6985
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 6987
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 6988
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 6992
    const-string v0, "options"

    move/from16 v3, v16

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 6993
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 6994
    const-string v0, "optionsUpdate"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 6995
    const-string v0, "optionsRevision"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 6996
    invoke-virtual {v1, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 6998
    invoke-virtual {v1, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    .line 6999
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    goto :goto_2

    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    .line 7001
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 7007
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdateFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7008
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 7009
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 7010
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 7015
    :cond_4
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 7016
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 7017
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 7018
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 7020
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7021
    invoke-virtual {v1, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    goto :goto_3

    .line 7023
    :cond_5
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    :goto_3
    const/4 v3, 0x0

    .line 7027
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v9, v18

    .line 7028
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 7030
    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    iget-object v5, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_6

    .line 7033
    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$xmlSeachDataValue:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 7034
    new-instance v3, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 7035
    iget-object v5, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 7036
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v6, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$xmlSeachDataValue:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v3, v4, v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 7037
    iget-object v4, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_4

    .line 7040
    :cond_6
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v6, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$xmlSeachDataValue:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v6}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v3, v4, v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 7041
    iget-object v4, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7044
    :cond_7
    :goto_4
    const-string/jumbo v3, "roomId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7045
    const-string v4, "companyId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7046
    const-string v5, "lastSequence"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_a

    .line 7048
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 7049
    iget-object v5, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    iget-object v7, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v7, v7, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v5

    if-nez v5, :cond_9

    .line 7051
    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v5}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 7052
    iget-object v6, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 7053
    invoke-virtual {v5, v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v4, :cond_8

    move-object/from16 v9, v19

    goto :goto_5

    :cond_8
    move-object v9, v4

    .line 7054
    :goto_5
    invoke-virtual {v5, v9}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 7055
    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_9
    if-eqz v2, :cond_a

    .line 7058
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 7059
    invoke-virtual {v5, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 7060
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7065
    :cond_a
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$contentsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7066
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$contentsFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 7069
    :cond_b
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 7072
    iget-object v1, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$docId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getPoolDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPoolDocument;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 7075
    iget-object v2, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$29;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deletePoolDocument(Lcom/metamoji/sd/entities/SdMOPoolDocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_c
    const/16 v17, 0x0

    return-object v17

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    const/16 v17, 0x0

    .line 7002
    iget-object v1, v0, Lcom/metamoji/sd/SdDriveDocumentManager$29$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$29;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$29;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v17
.end method
