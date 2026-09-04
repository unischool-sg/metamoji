.class Lcom/metamoji/sd/SdPrivateDriveManager$9$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$9;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$9;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1004
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 1004
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1009
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 1014
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1022
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v7

    .line 1029
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    const/4 v4, 0x1

    if-nez v7, :cond_2

    .line 1025
    iget-object v0, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$hasErr:Lcom/metamoji/sd/SdValue;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 1029
    :cond_2
    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$destMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    invoke-virtual {v2, v7}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1030
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    const-string v2, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "mmj.sd.merge.contents."

    invoke-static {v8, v2, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1034
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1035
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    .line 1038
    new-array v8, v8, [B

    .line 1040
    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_3

    const/4 v10, 0x0

    .line 1041
    invoke-virtual {v3, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1043
    :cond_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1044
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1047
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1048
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$hasErr:Lcom/metamoji/sd/SdValue;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 1052
    :cond_4
    new-instance v6, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 1053
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v5, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v6, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 1057
    invoke-static {v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 1059
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v6, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1061
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1062
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1063
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1065
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 1068
    :cond_6
    sget-object v5, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1071
    iget-object v5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v5, v5, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v8, v6, v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v8, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 1075
    :cond_7
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v0

    .line 1076
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v7, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_a

    .line 1080
    new-instance v2, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 1081
    invoke-virtual {v2, v7}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 1082
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v4, v0}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_3

    .line 1086
    :cond_8
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$nowDate:Ljava/util/Date;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v1

    :goto_2
    invoke-static {v3, v2, v4, v0}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_a
    :goto_3
    return-object v1
.end method
