.class public Lcom/metamoji/sd/SdPrivateDriveManager;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"


# static fields
.field private static final CACHES_DIR:Ljava/lang/String; = "/.sd_pr_caches"

.field private static _instance:Lcom/metamoji/sd/SdPrivateDriveManager; = null

.field protected static _isInitialized:Z = false


# instance fields
.field private m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdPrivateDriveDocumentManager;",
            ">;"
        }
    .end annotation
.end field

.field protected m_locationId:Ljava/lang/String;

.field protected m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

.field protected m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;


# direct methods
.method static bridge synthetic -$$Nest$mdoMergeDriveFolderRecursive(Lcom/metamoji/sd/SdPrivateDriveManager;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/HashMap;Ljava/util/Date;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveFolderRecursive(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/HashMap;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoMergePrivateDrive(Lcom/metamoji/sd/SdPrivateDriveManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergePrivateDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/SdPrivateDriveMOCManager;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    .line 292
    new-instance p1, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {p1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    return-void
.end method

.method private doMergeDriveDocuments(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z
    .locals 13

    .line 977
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    .line 978
    new-instance v6, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v6, v0}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 980
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    .line 981
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 983
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v7

    .line 984
    invoke-virtual {v1}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_a

    if-nez v7, :cond_0

    goto/16 :goto_1

    .line 990
    :cond_0
    :try_start_0
    invoke-virtual {v6, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentIdsWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v5

    .line 991
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 992
    new-instance v9, Lcom/metamoji/sd/SdValue;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 994
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager$9;

    move-object v2, p0

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/metamoji/sd/SdPrivateDriveManager$9;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/Date;)V

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 1106
    invoke-virtual {v9}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v4, :cond_1

    .line 1116
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    if-eqz v7, :cond_2

    .line 1120
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v12

    :cond_3
    if-eqz v4, :cond_4

    .line 1116
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    const/4 p1, 0x1

    if-eqz v7, :cond_5

    .line 1120
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1112
    :try_start_1
    const-string p2, "[SdPrivateDriveManager] :: ERROR doMergeDriveDocuments: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_6

    .line 1116
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_6
    if-eqz v7, :cond_7

    .line 1120
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_7
    return v12

    :goto_0
    if-eqz v4, :cond_8

    .line 1116
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_8
    if-eqz v7, :cond_9

    .line 1120
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 1122
    :cond_9
    throw p1

    :cond_a
    :goto_1
    if-eqz v4, :cond_b

    .line 1116
    invoke-virtual {v4}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_b
    if-eqz v7, :cond_c

    .line 1120
    invoke-virtual {v7}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_c
    return v12
.end method

.method private doMergeDriveFolderRecursive(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/HashMap;Ljava/util/Date;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/sd/SdManagedObjectContext;",
            "Lcom/metamoji/sd/SdDriveContentsMOManager;",
            "Lcom/metamoji/sd/SdPrivateDriveDocumentManager;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 887
    const-string v1, "allcnt"

    :try_start_0
    invoke-virtual {v4, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 890
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    .line 895
    :cond_0
    const-string/jumbo v5, "tagCheckMap"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 896
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 899
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v4, v12, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v12

    .line 901
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 903
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    .line 907
    invoke-virtual {v4, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFoldersByParentPath(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x0

    .line 908
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 909
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v9, v17

    check-cast v9, Lcom/metamoji/sd/entities/SdMOFolder;

    move-wide/from16 v19, v10

    .line 910
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v10, v19

    goto :goto_0

    :cond_1
    move-object/from16 v9, p4

    move-wide/from16 v19, v10

    const/16 v18, 0x1

    .line 913
    invoke-virtual {v9, v0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v11, v16

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    move-object/from16 p1, v0

    .line 917
    invoke-virtual {v15}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v0, p1

    goto :goto_1

    .line 921
    :cond_2
    invoke-virtual {v15}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOFolder;

    if-nez v0, :cond_5

    add-int/lit8 v14, v14, 0x1

    const/16 v0, 0xc8

    if-le v14, v0, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v21, 0x1

    add-long v21, v19, v21

    const-wide/16 v23, 0x3e8

    cmp-long v0, v21, v23

    if-lez v0, :cond_4

    goto :goto_3

    .line 935
    :cond_4
    new-instance v0, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    move-object/from16 v17, v5

    .line 936
    invoke-virtual {v15}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v0, v5}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMOFolder(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v4, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 938
    invoke-virtual {v15}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 939
    invoke-virtual {v15}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v19, v21

    goto :goto_2

    :cond_5
    move-object/from16 v17, v5

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v5, v17

    goto :goto_1

    :cond_6
    move-object/from16 p1, v0

    .line 947
    :goto_3
    invoke-static {v12, v13}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 948
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v2, v7}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 950
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 951
    invoke-virtual {v4, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 954
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 958
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveFolderRecursive(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/HashMap;Ljava/util/Date;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_7

    return v16

    :cond_7
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_4

    :cond_8
    return v18

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v18, 0x1

    return v18

    :catch_1
    move-exception v0

    const/16 v16, 0x0

    .line 965
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[SdPrivateDriveManager] :: ERROR doMergeDriveFolderRecursive: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v16
.end method

.method private doMergeDriveFolders(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z
    .locals 6

    .line 824
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object p2

    check-cast p2, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    .line 825
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, p2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 826
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 p2, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return p2

    .line 832
    :cond_1
    :try_start_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 834
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdPrivateDriveManager$8;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/Date;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-eqz v2, :cond_2

    .line 870
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 866
    :try_start_1
    const-string v0, "[SdPrivateDriveManager] :: ERROR doMergeDriveFolders: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 870
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return p2

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 872
    :cond_4
    throw p1
.end method

.method private doMergeDriveTags(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z
    .locals 6

    .line 728
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object p2

    check-cast p2, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    .line 729
    new-instance v3, Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-direct {v3, p2}, Lcom/metamoji/sd/SdDriveContentsMOManager;-><init>(Lcom/metamoji/sd/SdManagedObjectContextManager;)V

    .line 730
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 p2, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 810
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return p2

    .line 736
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getTagList()Ljava/util/List;

    move-result-object v4

    .line 737
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 739
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveManager$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdPrivateDriveManager$7;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Ljava/util/Date;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-eqz v2, :cond_2

    .line 810
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 806
    :try_start_1
    const-string v0, "[SdPrivateDriveManager] :: ERROR doMergeDriveTags: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 810
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return p2

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 812
    :cond_4
    throw p1
.end method

.method private doMergePrivateDrive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 694
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object p1

    .line 695
    invoke-virtual {p0, p2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->getMergingLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 704
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveTags(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    monitor-exit v1

    return v0

    .line 708
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveFolders(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 709
    monitor-exit v1

    return v0

    .line 711
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveDocuments(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 711
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;
    .locals 2

    .line 45
    sget-object v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_instance:Lcom/metamoji/sd/SdPrivateDriveManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-direct {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;-><init>()V

    .line 47
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->setupMainContext()V

    .line 48
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/SdPrivateDriveManager;-><init>(Lcom/metamoji/sd/SdPrivateDriveMOCManager;)V

    sput-object v1, Lcom/metamoji/sd/SdPrivateDriveManager;->_instance:Lcom/metamoji/sd/SdPrivateDriveManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_instance:Lcom/metamoji/sd/SdPrivateDriveManager;

    return-object v0
.end method

.method public static getPrivateDriveCacheDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.sd_pr_caches"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-object p0
.end method

.method public static getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 59
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->getDatabaseFileDir()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleChangeUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 8

    .line 124
    sget-boolean v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_isInitialized:Z

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;->doMigration()V

    .line 129
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;->setupPrivateDrive()V

    const/4 v0, 0x1

    .line 131
    sput-boolean v0, Lcom/metamoji/sd/SdPrivateDriveManager;->_isInitialized:Z

    .line 134
    :cond_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v7

    .line 135
    invoke-virtual {v7}, Lcom/metamoji/sd/SdPrivateDriveManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    move-result-object v0

    .line 136
    new-instance v3, Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-direct {v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;-><init>()V

    .line 138
    new-instance v5, Lcom/metamoji/sd/SdValue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 139
    new-instance v6, Lcom/metamoji/sd/SdValue;

    invoke-direct {v6}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 141
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_3

    .line 264
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 147
    :cond_1
    :try_start_0
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager$1;

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdPrivateDriveManager$1;-><init>(Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdPrivateDriveManager;)V

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 264
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 260
    :try_start_1
    const-string v0, "[SdPrivateDriveManager] :: ERROR handleChangeUserInfo: %s"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    .line 268
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 270
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveManager$2;

    invoke-direct {v0, v7}, Lcom/metamoji/sd/SdPrivateDriveManager$2;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_3
    return-void

    :goto_2
    if-eqz v2, :cond_4

    .line 264
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 266
    :cond_4
    throw p0
.end method

.method public static preparePrivateDrive(Ljava/lang/String;)Z
    .locals 3

    .line 90
    invoke-static {p0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getDatabaseFilePathWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getDatabaseFileDirWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 105
    :cond_1
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->setupMainContext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public clearnupDiscardedPrivateDrives()V
    .locals 6

    .line 567
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getDiscardedPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 570
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    .line 571
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    .line 572
    new-instance v4, Ljava/io/File;

    invoke-static {v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    new-instance v5, Ljava/io/File;

    invoke-static {v3}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveCacheDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 576
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 579
    new-instance v3, Lcom/metamoji/sd/SdPrivateDriveManager$5;

    invoke-direct {v3, p0, v2, v0}, Lcom/metamoji/sd/SdPrivateDriveManager$5;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 588
    :try_start_1
    const-string v2, "[SdPrivateDriveManager] :: ERROR clearnupDiscardedDrives: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 594
    :cond_2
    throw v1
.end method

.method public getCurrentPrivateId()Ljava/lang/String;
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 314
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 320
    :try_start_1
    const-string v3, "[SdPrivateDriveManager] :: ERROR getCurrentPrivateId: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 326
    :cond_4
    throw v1
.end method

.method public declared-synchronized getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;
    .locals 5

    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    if-nez v0, :cond_4

    .line 606
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 608
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, p1, v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 610
    invoke-static {p1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getPrivateDriveDataDirWithPrivateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v0}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->getDatabaseFilePathWithPrivateDriveDataDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v3, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;

    invoke-direct {v3, v0, p1}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/metamoji/sd/cs/SdCloudServiceContext;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v3}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->isDbFileExists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    invoke-virtual {v3}, Lcom/metamoji/sd/SdPrivateDriveContentsMOCManager;->setupMainContext()V

    .line 619
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getHomeDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setHomeDir(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getMaintenanceText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setMaintenanceText(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setUserId(Ljava/lang/String;)V

    .line 624
    :cond_0
    new-instance v2, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    invoke-direct {v2, v3, v0}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;-><init>(Lcom/metamoji/sd/SdDriveContentsMOCManager;Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 625
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_driveDocumentManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    :cond_1
    if-eqz v1, :cond_4

    .line 633
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 629
    :try_start_3
    const-string v0, "[SdPrivateDriveManager] :: ERROR getDocumentManagerByPrivateId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 633
    :try_start_4
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 630
    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    if-eqz v1, :cond_3

    .line 633
    :try_start_5
    invoke-virtual {v1}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 635
    :cond_3
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 638
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getDriveStatus()I
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return v1

    .line 493
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 495
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 498
    :try_start_1
    const-string v3, "[SdPrivateDriveManager] :: ERROR getDriveStatus: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 504
    :cond_4
    throw v1
.end method

.method public getLastUpdateRevisionByPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 521
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 524
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getLastUpdateRevision()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    :try_start_1
    const-string v2, "[SdPrivateDriveManager] :: ERROR getLastUpdateRevisionByPrivateId: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 532
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 534
    :cond_4
    throw p1
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 2

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_locationId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Ljava/io/File;

    const-string v1, "locationId.txt"

    invoke-static {v1}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->getDatabaseFilePathWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_locationId:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_locationId:Ljava/lang/String;

    .line 369
    invoke-static {v1, v0}, Lcom/metamoji/sd/SdUtils;->writeStringAsFile(Ljava/lang/String;Ljava/io/File;)V

    .line 371
    :goto_0
    const-string v0, "locationId.txt:%s"

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_locationId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[SdPrivateDriveManager] :: ERROR getLocationId: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_locationId:Ljava/lang/String;

    return-object v0
.end method

.method public getManagedObjectContextManager()Lcom/metamoji/sd/SdPrivateDriveMOCManager;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    return-object v0
.end method

.method public getServerDriveId()Ljava/lang/String;
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-object v1

    .line 340
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getCurrentPrivateDrive(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getDriveId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 346
    :try_start_1
    const-string v3, "[SdPrivateDriveManager] :: ERROR getServerDriveId: %s"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_3
    return-object v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 352
    :cond_4
    throw v1
.end method

.method public getUserIdFromPrivateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 550
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getUserId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    return-object v1
.end method

.method public mergeMergingPrivateDrive()V
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    .line 651
    :cond_0
    :try_start_0
    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager$6;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/sd/SdPrivateDriveManager$6;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 678
    :try_start_1
    const-string v2, "[SdPrivateDriveManager] :: ERROR mergeMergingPrivateDrive: %s"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_1
    return-void

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 684
    :cond_2
    throw v1
.end method

.method public putDriveStatusOff(Ljava/lang/String;I)Z
    .locals 7

    .line 438
    new-instance v4, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v6

    .line 445
    :cond_1
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveManager$4;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdPrivateDriveManager$4;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;I)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 466
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 476
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v6

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 471
    :try_start_1
    const-string p2, "[SdPrivateDriveManager] :: ERROR putDriveStatusOff: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 476
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return v6

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 478
    :cond_6
    throw p1
.end method

.method public putDriveStatusOn(Ljava/lang/String;I)Z
    .locals 7

    .line 386
    new-instance v4, Lcom/metamoji/sd/SdValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v0}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectContextManager:Lcom/metamoji/sd/SdPrivateDriveMOCManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveMOCManager;->createChildContext()Lcom/metamoji/sd/SdManagedObjectContext;

    move-result-object v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    .line 424
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_0
    return v6

    .line 393
    :cond_1
    :try_start_0
    new-instance v0, Lcom/metamoji/sd/SdPrivateDriveManager$3;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdPrivateDriveManager$3;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;I)V

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->performBlock(Lcom/metamoji/sd/SdBlock;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_2
    return v6

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 419
    :try_start_1
    const-string p2, "[SdPrivateDriveManager] :: ERROR putDriveStatusOn: %s"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    .line 424
    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    :cond_5
    return v6

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/sd/SdManagedObjectContext;->close()V

    .line 426
    :cond_6
    throw p1
.end method
