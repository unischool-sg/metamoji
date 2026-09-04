.class Lcom/metamoji/ctold/CtDocTagManagerImpl;
.super Ljava/lang/Object;
.source "CtDocTagManagerImpl.java"

# interfaces
.implements Lcom/metamoji/ctold/CtDocTagManager;


# instance fields
.field private directionHandlerId:Ljava/lang/String;

.field private directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field private documentId:Ljava/lang/String;

.field private objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

.field private objectKeyCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ownerModel:Lcom/metamoji/df/model/IModel;

.field private sqlModel:Lcom/metamoji/sqldb/SqlModel;

.field private tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field private tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

.field private tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->ownerModel:Lcom/metamoji/df/model/IModel;

    .line 82
    iput-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    .line 83
    const-string p2, "CT_SQLDB"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sqldb/SqlModel;

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    if-eqz p1, :cond_0

    .line 86
    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->generateDatabaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlModel;->setDatabaseFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->ownerModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    const-string v0, "$sqldb"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sqldb/SqlModel;

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    .line 89
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->generateDatabaseFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/sqldb/SqlModel;->setDatabaseFilePath(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    const-string v0, "datakind"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/sqldb/SqlModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/metamoji/sqldb/SqlModel;->setVersion(I)V

    .line 94
    invoke-static {}, Lcom/metamoji/ctold/database/CtDatabaseFactory;->instance()Lcom/metamoji/ctold/database/CtDatabaseFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ctold/database/CtDatabaseFactory;->createObjectDatabase(Lcom/metamoji/sqldb/SqlModel;Ljava/lang/String;)Lcom/metamoji/ctold/database/CtObjectDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    .line 95
    invoke-static {}, Lcom/metamoji/ctold/database/CtDatabaseFactory;->instance()Lcom/metamoji/ctold/database/CtDatabaseFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/ctold/database/CtDatabaseFactory;->createTagDatabase(Lcom/metamoji/sqldb/SqlModel;Lcom/metamoji/ctold/database/CtObjectDatabase;)Lcom/metamoji/ctold/database/CtTagDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    .line 97
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 98
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    .line 99
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {p2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getAllObjectKeys()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public attachTags(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            "Lcom/metamoji/nt/NtPageController;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 135
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    .line 139
    new-instance p4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 140
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 145
    :try_start_1
    invoke-interface {v8, v0}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    move-object v1, p0

    move-object v6, p2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, p3

    .line 146
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/cm/RectEx;)[Ljava/lang/String;

    move-result-object p2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 147
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 148
    aget-object p3, p2, v0

    if-eqz p3, :cond_0

    .line 149
    iget-object v0, v1, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p3, 0x1

    .line 151
    aget-object p2, p2, p3

    if-eqz p2, :cond_1

    .line 152
    iget-object p3, v1, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    iget-object p2, v1, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    :cond_2
    move-object v6, p1

    move-object v5, p4

    .line 159
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 163
    :try_start_2
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p2, v0

    .line 166
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "rollback failed: %s"

    invoke-static {p2, p4, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_3
    :goto_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0001"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method attachTags(Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/cm/RectEx;)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Lcom/metamoji/ctold/object/CtObjectType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtPageController;",
            "Lcom/metamoji/cm/RectEx;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 991
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    if-eqz v1, :cond_0

    .line 992
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    .line 993
    :goto_0
    invoke-static/range {p2 .. p4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    invoke-virtual {v0, v7}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v6, :cond_3

    if-eqz p5, :cond_1

    .line 999
    invoke-virtual/range {p5 .. p5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    goto :goto_1

    :cond_1
    move-object v14, v4

    .line 1000
    :goto_1
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->instance()Lcom/metamoji/ctold/object/CtObjectReferenceFactory;

    move-result-object v10

    iget-object v15, v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/ctold/object/CtObjectReferenceFactory;->create(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v9

    .line 1001
    iget-object v10, v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v10, v9}, Lcom/metamoji/ctold/database/CtObjectDatabase;->setObject(Lcom/metamoji/ctold/object/CtObjectReference;)V

    .line 1002
    aput-object v7, v2, v3

    if-eqz v14, :cond_2

    .line 1005
    iget-object v3, v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    move-object/from16 v9, p6

    invoke-interface {v3, v7, v9, v4}, Lcom/metamoji/ctold/database/CtObjectDatabase;->updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/Blob;)V

    .line 1013
    :cond_2
    iget-object v3, v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v3, v7, v1, v4}, Lcom/metamoji/ctold/database/CtTagDatabase;->setTags(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    if-eqz v8, :cond_3

    if-nez v6, :cond_3

    .line 1017
    iget-object v1, v0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 1018
    aput-object v7, v2, v5

    :cond_3
    return-object v2
.end method

.method changeGeometricProperties(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 2

    .line 1038
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1042
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->getPageController(Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1044
    :goto_0
    invoke-static {v1, p1}, Lcom/metamoji/ctold/CtTagUtil;->getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1045
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1, v0, p1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->updateObject(Ljava/lang/String;Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 114
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Lcom/metamoji/ctold/database/CtTagDatabase;->close()V

    .line 116
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->close()V

    .line 120
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    .line 122
    :cond_1
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    .line 123
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->documentId:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->ownerModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->close()V

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method fireEventTagChanged(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    .line 1105
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1106
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1107
    new-instance v1, Lcom/metamoji/ctold/CtEventTagChanged;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1108
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method

.method fireEventTagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Set;

    if-eqz v7, :cond_0

    .line 1172
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1173
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    .line 1174
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1175
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1176
    invoke-virtual {p0, v3, v4, v5}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    .line 1179
    new-instance v2, Lcom/metamoji/ctold/CtEventTagChanged;

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1180
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_0
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_1

    .line 1186
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result p1

    if-gtz p1, :cond_2

    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1187
    :cond_2
    invoke-static {p2}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 1188
    invoke-static {p2}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-static {p2}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1190
    invoke-virtual {p0, v2, v3, v4}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1192
    new-instance v1, Lcom/metamoji/ctold/CtEventTagChanged;

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1193
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1197
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1116
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_0

    .line 1117
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1118
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v4

    .line 1119
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1120
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1121
    invoke-virtual {p0, v4, v5, v6}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1123
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 1124
    new-instance v3, Lcom/metamoji/ctold/CtEventTagChanged;

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1128
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1129
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1138
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_0

    .line 1139
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1140
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v4

    .line 1141
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1142
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1143
    invoke-virtual {p0, v4, v5, v6}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1145
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 1146
    new-instance v3, Lcom/metamoji/ctold/CtEventTagChanged;

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1147
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1151
    :cond_1
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1152
    invoke-static {p3}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 1153
    invoke-static {p3}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1154
    invoke-static {p3}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1155
    invoke-virtual {p0, v2, v3, v4}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1156
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 1158
    new-instance v1, Lcom/metamoji/ctold/CtEventTagChanged;

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ctold/CtEventTagChanged;-><init>(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;Ljava/util/Set;)V

    .line 1159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1162
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method generateDatabaseFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 959
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 960
    new-instance v1, Ljava/io/File;

    const-string v2, "sqldb"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 961
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cannot create cache directory: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CT0012"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 965
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s.%s"

    const-string v4, "ctagdb"

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 967
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0013"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public geometricPropsChanged(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    const/4 p2, 0x0

    .line 382
    :try_start_0
    iget-object p3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object p2

    const/4 p3, 0x0

    .line 383
    invoke-interface {p2, p3}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 384
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->changeGeometricProperties(Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 385
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 386
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 393
    :try_start_1
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 396
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "rollback failed: %s"

    invoke-static {p2, p4, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_1
    :goto_0
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0003"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getAllUsedTagClasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-static {}, Lcom/metamoji/ctold/template/CtTemplateManager;->instance()Lcom/metamoji/ctold/template/CtTemplateManager;

    move-result-object v1

    .line 582
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v2}, Lcom/metamoji/ctold/database/CtTagDatabase;->getUsedTagIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 583
    invoke-virtual {v1, v3}, Lcom/metamoji/ctold/template/CtTemplateManager;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 585
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllUsedTagNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    invoke-static {}, Lcom/metamoji/ctold/template/CtTemplateManager;->instance()Lcom/metamoji/ctold/template/CtTemplateManager;

    move-result-object v1

    .line 568
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v2}, Lcom/metamoji/ctold/database/CtTagDatabase;->getUsedTagIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 569
    invoke-virtual {v1, v3}, Lcom/metamoji/ctold/template/CtTemplateManager;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 571
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagClass;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 572
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    return-object v0
.end method

.method getFirstComeTagInstances(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 904
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 905
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 906
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 907
    invoke-static {v2}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v2

    .line 908
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v3, v2}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 909
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 910
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_1

    .line 912
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 913
    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 916
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 917
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 918
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getLastComeTagInstances(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 931
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 932
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getFirstComeTagInstances(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getObjectIdsInTaggableObject(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 552
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 553
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 555
    invoke-static {v2}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getObjectKeyToTagInstances(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;"
        }
    .end annotation

    .line 1073
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1074
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1075
    invoke-virtual {p0, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1079
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1080
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    .line 1082
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1083
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getObjectKeys(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1050
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1051
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 1052
    sget-object v2, Lcom/metamoji/ctold/CtDocTagManagerImpl$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1065
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1055
    :cond_1
    check-cast v1, Lcom/metamoji/nt/NtPageController;

    .line 1056
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInPage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getObjectReferences(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ">;"
        }
    .end annotation

    .line 976
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 977
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 978
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectReference(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 980
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;
    .locals 2

    .line 251
    invoke-virtual {p0, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getTagInstances(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;

    move-result-object p2

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 253
    invoke-virtual {v0}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/tag/CtSystemTagId;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;

    .line 269
    sget-object v2, Lcom/metamoji/ctold/CtDocTagManagerImpl$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 295
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 304
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 305
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v4

    if-ne v4, p1, :cond_5

    .line 306
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-nez p4, :cond_7

    .line 273
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/ctold/tag/CtTagInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInPage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 283
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v4

    if-ne v4, p1, :cond_9

    .line 284
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public getTagInstances(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/object/CtObjectReference;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getTagInstances(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 614
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public hasSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 343
    sget-object v0, Lcom/metamoji/ctold/CtDocTagManagerImpl$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-virtual {p2}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v2

    .line 352
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/metamoji/ctold/database/CtTagDatabase;->hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 345
    :cond_2
    invoke-static {p2, p4, p3}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 346
    invoke-virtual {p0, p3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    return v2

    .line 349
    :cond_3
    iget-object p3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, p4, v0}, Lcom/metamoji/ctold/database/CtTagDatabase;->hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSystemTagInstanceInUnit(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/ctold/database/CtTagDatabase;->hasSystemTag(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isContainsTagInstanceIn(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1092
    sget-object v0, Lcom/metamoji/ctold/CtDocTagManagerImpl$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-virtual {p1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1097
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {p1, p3}, Lcom/metamoji/ctold/database/CtTagDatabase;->isContainsTagIn(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1094
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {p1, p2}, Lcom/metamoji/ctold/database/CtTagDatabase;->isContainsTagIn(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isRegisteredObject(Ljava/lang/String;)Z
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public makeDirectable(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->unmakeDirectable()V

    .line 532
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 533
    iput-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    .line 534
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    return-void
.end method

.method public notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;Lcom/metamoji/nt/NtPageController;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 736
    :try_start_1
    invoke-interface {v2, v0}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 737
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v3

    .line 738
    invoke-virtual {p0, v3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_0

    .line 740
    :try_start_2
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto/16 :goto_1

    .line 744
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v4, v3}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 746
    iget-object v4, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 748
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v4, :cond_1

    :try_start_4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/CtTaggableObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 749
    :cond_1
    :try_start_5
    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v7

    invoke-interface {v1}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->getOwnerId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/metamoji/ctold/CtTagUtil;->getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v5, p0

    move-object v10, p3

    :try_start_6
    invoke-virtual/range {v5 .. v11}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/cm/RectEx;)[Ljava/lang/String;

    move-result-object p3

    .line 750
    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 751
    iget-object v4, v5, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 752
    aget-object v0, p3, v0

    if-eqz v0, :cond_2

    .line 753
    iget-object v4, v5, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x1

    .line 755
    aget-object p3, p3, v0

    if-eqz p3, :cond_3

    .line 756
    iget-object v0, v5, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 758
    :cond_3
    iget-object p3, v5, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 760
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 763
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 764
    invoke-virtual {p0, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 766
    invoke-static {v1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v5, p0

    :goto_0
    move-object p1, v0

    :goto_1
    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v5, p0

    move-object p1, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 770
    :try_start_7
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p2, v0

    .line 773
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "rollback failed: %s"

    invoke-static {p2, v0, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    :cond_5
    :goto_3
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0009"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public notifyObjectGeometricChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 621
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    return-void
.end method

.method public notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 655
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void
.end method

.method public notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    return-void
.end method

.method public notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
    .locals 15

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 853
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v3}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    .line 854
    :try_start_1
    invoke-interface {v8, v9}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 855
    invoke-static/range {p1 .. p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v10

    .line 856
    invoke-virtual {p0, v10}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 858
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 862
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 863
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x2

    .line 864
    new-array v3, v3, [Lcom/metamoji/ctold/CtTaggableObject;

    aput-object p1, v3, v9

    const/4 v13, 0x1

    aput-object v0, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v11, v12}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getFirstComeTagInstances(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    .line 866
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 868
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    invoke-interface {v0}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/metamoji/ctold/CtTagUtil;->getOwnerId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/metamoji/ctold/CtTagUtil;->getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/cm/RectEx;)[Ljava/lang/String;

    move-result-object v2

    .line 869
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 870
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v3, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 871
    aget-object v3, v2, v9

    if-eqz v3, :cond_1

    .line 872
    iget-object v4, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 874
    :cond_1
    aget-object v2, v2, v13

    if-eqz v2, :cond_2

    .line 875
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 877
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v2}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 882
    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 883
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 885
    invoke-static {v0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v10, v0, v14, v11}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    .line 887
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 888
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, v12}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v8, v2

    :goto_0
    move-object v2, v0

    if-eqz v8, :cond_5

    .line 893
    :try_start_2
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "rollback failed: %s"

    invoke-static {v0, v4, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    :cond_5
    :goto_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v3, "CT0011"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/nt/NtPageController;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 787
    :try_start_1
    invoke-interface {v8, v0}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 789
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 790
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/CtTaggableObject;

    .line 791
    invoke-static {v4}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v4

    .line 792
    invoke-virtual {p0, v4}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->isRegisteredObject(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 793
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 798
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 802
    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 803
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v12, p1

    .line 804
    invoke-virtual {p0, v12, v10, v11}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getFirstComeTagInstances(Ljava/util/List;Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    .line 805
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 807
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 811
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v3, v9, v2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 813
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/metamoji/ctold/CtTagUtil;->getOwnerId(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v6

    move-object/from16 v14, p2

    invoke-static {v6, v14}, Lcom/metamoji/ctold/CtTagUtil;->getTransformRect(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/cm/RectEx;

    move-result-object v7

    move-object v1, p0

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Ljava/util/List;Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/cm/RectEx;)[Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 815
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 816
    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    .line 817
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v0, 0x1

    .line 819
    aget-object v0, v2, v0

    if-eqz v0, :cond_5

    .line 820
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 822
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 827
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 828
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 830
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/CtTaggableObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v10, v2, v13}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)V

    .line 832
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 833
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, v11}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v2

    :goto_1
    move-object v2, v0

    if-eqz v8, :cond_8

    .line 838
    :try_start_2
    invoke-interface {v8}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 841
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "rollback failed: %s"

    invoke-static {v0, v4, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    :cond_8
    :goto_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v3, "CT0010"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public notifyObjectsGeometricChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 629
    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 630
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/CtTaggableObject;

    .line 631
    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->changeGeometricProperties(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 634
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 639
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 643
    :try_start_1
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "rollback failed: %s"

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_2
    :goto_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0007"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public notifyObjectsRemoving(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 663
    :try_start_1
    invoke-interface {v1, v2}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 665
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeys(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 667
    invoke-virtual {p0, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeyToTagInstances(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 668
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 670
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 674
    :cond_0
    iget-object v4, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5, v0}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 675
    invoke-interface {v1}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 676
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 677
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->updateTagSprite(Ljava/util/List;)V

    .line 684
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;)V

    .line 686
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 687
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 688
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 690
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_4

    .line 696
    :try_start_2
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "rollback failed: %s"

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    :cond_4
    :goto_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CT0008"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 489
    :try_start_1
    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 491
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeys(Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 493
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeyToTagInstances(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 494
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 496
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, p2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 500
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 501
    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 502
    iget-object p2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 507
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_2

    .line 511
    :try_start_2
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 514
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "rollback failed: %s"

    invoke-static {p2, v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :cond_2
    :goto_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0006"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 4

    const/4 p2, 0x0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 409
    :try_start_1
    invoke-interface {v0, v1}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 411
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 412
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v2, p1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInPage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 414
    invoke-virtual {p0, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeyToTagInstances(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 415
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 417
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 420
    :cond_0
    iget-object v3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v3, p1, p2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjectsInPage(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 421
    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 422
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 423
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 428
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_2

    .line 432
    :try_start_2
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 435
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "rollback failed: %s"

    invoke-static {p2, v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_2
    :goto_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0004"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    const/4 p2, 0x0

    .line 448
    :try_start_0
    iget-object p3, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 449
    :try_start_1
    invoke-interface {p3, v0}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 451
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v1, p1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->getObjectKeysInUnit(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-virtual {p0, v0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getObjectKeyToTagInstances(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 455
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 457
    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    return-void

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-interface {v2, p1, p2}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjectsInUnit(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 461
    invoke-interface {p3}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    .line 462
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 463
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    .line 468
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Ljava/util/Set;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object p2, p3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_2

    .line 472
    :try_start_2
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 475
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "rollback failed: %s"

    invoke-static {p2, v0, p3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_2
    :goto_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CT0005"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Ljava/lang/String;
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->removeTag(Lcom/metamoji/ctold/tag/CtTagInstance;)V

    .line 1026
    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object p1

    .line 1027
    invoke-interface {p1}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectKey()Ljava/lang/String;

    move-result-object p1

    .line 1028
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1029
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectDatabase:Lcom/metamoji/ctold/database/CtObjectDatabase;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/metamoji/ctold/database/CtObjectDatabase;->removeObjects(Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-object p1

    :cond_0
    return-object v1
.end method

.method public removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/df/model/IModel;)V
    .locals 7

    .line 176
    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getObjectReference()Lcom/metamoji/ctold/object/CtObjectReference;

    move-result-object p2

    .line 177
    invoke-interface {p2}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 178
    invoke-interface {p2}, Lcom/metamoji/ctold/object/CtObjectReference;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-interface {p2}, Lcom/metamoji/ctold/object/CtObjectReference;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    .line 181
    new-instance v5, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p2}, Lcom/metamoji/ctold/database/CtTagDatabase;->getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 182
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 183
    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {v0}, Lcom/metamoji/sqldb/SqlModel;->getDatabase()Lcom/metamoji/sqldb/SqlDatabase;

    move-result-object p2

    const/4 v0, 0x0

    .line 188
    invoke-interface {p2, v0}, Lcom/metamoji/sqldb/SqlDatabase;->setAutoCommit(Z)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->removeTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->commit()V

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->objectKeyCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->sqlModel:Lcom/metamoji/sqldb/SqlModel;

    invoke-interface {p1}, Lcom/metamoji/sqldb/SqlModel;->isDatabaseModified()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->setSaveOnEndIfNeeded()V

    :cond_1
    move-object v1, p0

    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->fireEventTagChanged(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p2, :cond_2

    .line 203
    :try_start_1
    invoke-interface {p2}, Lcom/metamoji/sqldb/SqlDatabase;->rollback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p2, v0

    .line 206
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "rollback failed: %s"

    invoke-static {p2, v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_2
    :goto_0
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "CT0002"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeTagRemovedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/Set<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;>;)V"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagRemovedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public resetSystemTagInstance(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 238
    invoke-virtual {p0, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 241
    invoke-virtual {v2}, Lcom/metamoji/ctold/tag/CtTagInstance;->getSystemTagId()Lcom/metamoji/ctold/tag/CtSystemTagId;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 242
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0, p2, p3, v1, p4}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;
    .locals 2

    .line 598
    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/ctold/search/CtSearchCondition;->getTagConditions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->tagDatabase:Lcom/metamoji/ctold/database/CtTagDatabase;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/database/CtTagDatabase;->searchTaggedObjects(Lcom/metamoji/ctold/search/CtSearchCondition;)Lcom/metamoji/ctold/search/CtSearchResult;

    move-result-object p1

    return-object p1

    .line 599
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/ctold/search/CtSearchResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/metamoji/ctold/search/CtSearchResult;-><init>(Ljava/util/List;Lcom/metamoji/ctold/search/CtSearchCondition;)V

    return-object v0
.end method

.method setSaveOnEndIfNeeded()V
    .locals 2

    .line 1202
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1210
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public setSystemTagInstance(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 217
    invoke-virtual {p0, p2}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->getTagInstances(Lcom/metamoji/ctold/object/CtObjectReference;)Ljava/util/List;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 221
    invoke-virtual {v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagInstance;->getTagId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 229
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    invoke-virtual {p0, p2, p3, v1, p4}, Lcom/metamoji/ctold/CtDocTagManagerImpl;->attachTags(Lcom/metamoji/ctold/object/CtObjectReference;Lcom/metamoji/nt/NtPageController;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public unmakeDirectable()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 543
    iput-object v0, p0, Lcom/metamoji/ctold/CtDocTagManagerImpl;->directionHandlerId:Ljava/lang/String;

    return-void
.end method

.method updateTagSprite(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 1214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/CtTaggableObject;

    .line 1215
    invoke-static {v0}, Lcom/metamoji/ctold/CtTagUtil;->updateTagSprite(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method
