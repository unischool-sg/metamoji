.class public Lcom/metamoji/df/model/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/metamoji/df/model/IModelManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/model/ModelManager$LowMemoryListener;
    }
.end annotation


# static fields
.field private static final CREATOR_INFO_CAPABILITY:Ljava/lang/String; = "cpb"

.field private static final CREATOR_INFO_PRODUCT_NAME:Ljava/lang/String; = "pnm"

.field private static final CREATOR_INFO_PRODUCT_VERSION:Ljava/lang/String; = "pvs"

.field protected static final EXTRA_KEY_CREATOR_INFO:Ljava/lang/String; = "ci"

.field protected static final EXTRA_KEY_MODEL_TYPE_DIC:Ljava/lang/String; = "td"

.field protected static final EXTRA_KEY_PRELOADED_PROPS_TABLE:Ljava/lang/String; = "pp"

.field protected static final EXTRA_KEY_VERSION_INFO:Ljava/lang/String; = "vi"

.field public static final INVALID_MODEL_TABLE_INDEX:I = -0x1

.field protected static final INVALID_TYPE_INDEX:I = 0xffff

.field protected static final PRELOADED_FLAG1_EAT_EVENT_B:S = 0x1s

.field protected static final STATE_DATA_VERSION_1:I = 0x1

.field protected static final STATE_DATA_VERSION_2:I = 0x2

.field protected static final STATE_DATA_VERSION_3:I = 0x3

.field protected static final STATE_DATA_VERSION_NEWEST_IN_SUPPORTED:I = 0x3

.field protected static final STATE_DATA_VERSION_OLDEST_IN_SUPPORTED:I = 0x1


# instance fields
.field private creatorInfoNeeded:Z

.field private currentStateDataVersion:I

.field private deletedModelDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private extraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field

.field private extraTableModified:Z

.field private lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

.field mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private modelTable:Lcom/metamoji/df/model/ByteData;

.field private modelTableModified:Z

.field private modelTypeDictionary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

.field private modelTypeDictionaryModified:Z

.field private modifiedModels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private preferredStateDataVersion:I

.field private preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

.field private preloadedPropsTableHeaderSize:I

.field private preloadedPropsTableModified:Z

.field private stateData:Lcom/metamoji/df/model/StateData;

.field private undoPerformerDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IUndoPerformer;",
            ">;"
        }
    .end annotation
.end field

.field private undoTable:Lcom/metamoji/df/model/ByteData;

.field private undoTableModified:Z

.field private versionInfoDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private versionInfoDictionaryModified:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmodelList(Lcom/metamoji/df/model/ModelManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodelTable(Lcom/metamoji/df/model/ModelManager;)Lcom/metamoji/df/model/ByteData;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstateData(Lcom/metamoji/df/model/ModelManager;)Lcom/metamoji/df/model/StateData;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 92
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    .line 93
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 95
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    .line 97
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    .line 98
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z

    .line 99
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 100
    iput v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    .line 101
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 102
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    .line 103
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 104
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 105
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    .line 106
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 107
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    .line 108
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    .line 109
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    .line 110
    iput p1, p0, Lcom/metamoji/df/model/ModelManager;->preferredStateDataVersion:I

    .line 111
    iput v1, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    .line 112
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    .line 113
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->extraTableModified:Z

    .line 114
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    return-void
.end method

.method private addUndoModel(I)V
    .locals 7

    .line 1697
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1700
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1703
    sget-object v1, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/UndoTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    .line 1704
    invoke-direct {p0, v1}, Lcom/metamoji/df/model/ModelManager;->destroyModelsInUndoTable(I)V

    .line 1706
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    sget v4, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    add-int/lit8 v5, v1, 0x1

    sget v6, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    .line 1707
    new-instance v3, Lcom/metamoji/df/model/UndoTableItem;

    sget v4, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    new-array v4, v4, [B

    invoke-direct {v3, v4, v2}, Lcom/metamoji/df/model/UndoTableItem;-><init>([BI)V

    .line 1708
    sget-object v4, Lcom/metamoji/df/model/UndoTableItem;->dataModel:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/df/model/UndoTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1709
    invoke-virtual {v3}, Lcom/metamoji/df/model/UndoTableItem;->getData()[B

    move-result-object p1

    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v3

    sget v4, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sget v6, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v1, v6

    add-int/2addr v4, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1710
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/df/model/UndoTableHeader;->reposition([BI)V

    .line 1711
    sget-object p1, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, p1, v5}, Lcom/metamoji/df/model/UndoTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    const/4 p1, 0x1

    .line 1712
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1714
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1715
    throw p1
.end method

.method private callUndoPerformerForCheckVersionWithModelIndex(I)Z
    .locals 2

    .line 1880
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1881
    const-string v0, "!type"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1882
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IUndoPerformer;

    if-eqz v0, :cond_0

    .line 1884
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IUndoPerformer;->checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private callUndoPerformerWithModelIndex(IZ)V
    .locals 2

    .line 1851
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1852
    const-string v0, "!type"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1853
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IUndoPerformer;

    if-eqz v0, :cond_0

    .line 1855
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IUndoPerformer;->performUndoOrRedo(Lcom/metamoji/df/model/IModel;Z)V

    :cond_0
    return-void
.end method

.method private cleanupModelWithSubTree(ILcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 2

    .line 1972
    invoke-virtual {p2, p1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->isModelUndestroyable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1978
    :cond_0
    invoke-virtual {p2, p1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->setModelUndestroyable(I)V

    .line 1982
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/Model;

    if-nez v0, :cond_1

    .line 1985
    const-string v0, "!type"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1986
    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getSkippableModelTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1987
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1994
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object v0

    .line 1995
    invoke-virtual {v0, p2}, Lcom/metamoji/df/model/Model;->cleanupModel(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 1999
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getRefModels()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2000
    invoke-virtual {p2}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->getRefModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2001
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 2002
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/metamoji/df/model/ModelManager;->cleanupModelWithSubTree(ILcom/metamoji/df/model/ModelManagerCleanupContext;)V

    goto :goto_1

    .line 2006
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 2007
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0

    :goto_2
    const/4 v1, -0x1

    if-eq v1, v0, :cond_3

    .line 2009
    invoke-direct {p0, v0, p2}, Lcom/metamoji/df/model/ModelManager;->cleanupModelWithSubTree(ILcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 2010
    invoke-direct {p0, p1, v0}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 2011
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private createExtraData()V
    .locals 5

    const/4 v0, 0x2

    .line 362
    iget v1, p0, Lcom/metamoji/df/model/ModelManager;->preferredStateDataVersion:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    goto :goto_0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    .line 369
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->extraTableModified:Z

    .line 370
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    .line 374
    :goto_0
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 376
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 382
    new-instance v3, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v3}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 383
    iget v3, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    if-ge v3, v2, :cond_1

    .line 384
    new-instance v2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v3, v3, [B

    invoke-direct {v2, v3, v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 385
    sget-object v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 386
    sget-object v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 387
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 388
    sget v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    iput v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    goto :goto_1

    .line 390
    :cond_1
    iput v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    .line 392
    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    return-void
.end method

.method private destroyModelsInUndoTable(I)V
    .locals 4

    .line 1064
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    div-int/2addr v0, v1

    .line 1065
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    .line 1066
    new-instance v2, Lcom/metamoji/df/model/UndoTableItem;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/metamoji/df/model/UndoTableItem;-><init>([BI)V

    :goto_0
    if-ge p1, v0, :cond_1

    .line 1068
    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sget v3, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v3, p1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/metamoji/df/model/UndoTableItem;->reposition(I)V

    .line 1069
    sget-object v1, Lcom/metamoji/df/model/UndoTableItem;->dataModel:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/model/UndoTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    .line 1070
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/Model;

    if-nez v3, :cond_0

    .line 1072
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->destroyModel(I)V

    goto :goto_1

    .line 1074
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/df/model/Model;->destroy()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private destroyPreloadPropsData()V
    .locals 2

    const/4 v0, 0x0

    .line 853
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 854
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    const/4 v1, 0x0

    .line 855
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 856
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    .line 857
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 859
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 860
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    return-void
.end method

.method private ensureSavedCore(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 10

    .line 2037
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2038
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2039
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3, v1, v2}, Lcom/metamoji/df/model/StateData;->deleteData(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2041
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    .line 2045
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 2046
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2047
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/Model;

    if-eqz v1, :cond_2

    .line 2049
    invoke-virtual {v1, p1}, Lcom/metamoji/df/model/Model;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    goto :goto_1

    .line 2052
    :cond_3
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2055
    :cond_4
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 2058
    iget-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 2060
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v1

    .line 2063
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v1, :cond_5

    .line 2061
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v6

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    goto :goto_2

    .line 2063
    :cond_5
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v4

    .line 2065
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_6

    .line 2066
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/df/model/StateDataHeader;->setModelTablePos(J)V

    .line 2067
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 2069
    :cond_6
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 2073
    :cond_7
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->saveExtraData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 2076
    iget-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z

    if-eqz v1, :cond_a

    .line 2078
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v1

    .line 2081
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v1, :cond_8

    .line 2079
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v6

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    goto :goto_3

    .line 2081
    :cond_8
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v4

    .line 2083
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_9

    .line 2084
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/df/model/StateDataHeader;->setUndoTablePos(J)V

    .line 2085
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 2087
    :cond_9
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z

    .line 2091
    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v1

    iget v4, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    if-eq v1, v4, :cond_b

    .line 2092
    invoke-virtual {v0, v4}, Lcom/metamoji/df/model/StateDataHeader;->setFormatVersion(I)V

    .line 2093
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 2096
    :cond_b
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isStateDataHeaderModified()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2097
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->updateHeader()V

    .line 2098
    invoke-virtual {p1, v2}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 2100
    :cond_c
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateData;->flush()V

    return-void
.end method

.method private generateModel(Ljava/lang/String;I)Lcom/metamoji/df/model/Model;
    .locals 0

    .line 314
    invoke-static {p1, p0, p2}, Lcom/metamoji/df/model/ModelFactory;->newModel(Ljava/lang/String;Lcom/metamoji/df/model/ModelManager;I)Lcom/metamoji/df/model/Model;

    move-result-object p1

    return-object p1
.end method

.method private static getPreloadedPropertyItemFlag(Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;Lcom/metamoji/cm/Structured$UInt8LEMember;Lcom/metamoji/cm/Structured$UInt8LEMember;S)Ljava/lang/Object;
    .locals 0

    .line 882
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S

    move-result p1

    .line 883
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S

    move-result p0

    and-int/2addr p1, p3

    if-eqz p1, :cond_1

    and-int/2addr p0, p3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 886
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 888
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRootModelOfTree()I
    .locals 3

    .line 1594
    new-instance v0, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1595
    sget-object v1, Lcom/metamoji/df/model/ModelTableHeader;->treeRootIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0

    return v0
.end method

.method private loadExtraData()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->loadExtraDataSubV3()V

    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->loadExtraDataSubV2()V

    return-void
.end method

.method private loadExtraDataSubV2()V
    .locals 11

    .line 412
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 415
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 416
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 419
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v2

    .line 420
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    if-ne v6, v3, :cond_0

    const/16 v3, 0x8

    .line 424
    new-array v3, v3, [B

    .line 425
    invoke-static {v3, v1, v4, v5}, Lcom/metamoji/cm/BytesUtils;->writeSInt64LE([BIJ)V

    .line 426
    new-instance v7, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v7}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v7, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 427
    sget v8, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;->SIZE:I

    invoke-virtual {v7, v2, v1, v8}, Lcom/metamoji/df/model/ByteData;->appendBytes([BII)V

    .line 428
    iget-object v7, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v7, v3}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 429
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    sget v7, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;->SIZE:I

    array-length v8, v2

    sget v9, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV1;->SIZE:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v2, v7, v8}, Lcom/metamoji/df/model/ByteData;->appendBytes([BII)V

    .line 430
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    goto :goto_0

    .line 432
    :cond_0
    new-instance v3, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v3, v2}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 435
    :goto_0
    new-instance v2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v3, v3, [B

    invoke-direct {v2, v3, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 436
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v7

    sget v8, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v3, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    iget v3, p0, Lcom/metamoji/df/model/ModelManager;->preferredStateDataVersion:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-lt v3, v7, :cond_1

    .line 439
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    sget v7, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-virtual {v3, v1, v7}, Lcom/metamoji/df/model/ByteData;->removeBytes(II)V

    .line 440
    iput v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    .line 441
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 442
    iget v3, p0, Lcom/metamoji/df/model/ModelManager;->preferredStateDataVersion:I

    iput v3, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    .line 443
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    .line 444
    const-string v3, "pp"

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v9

    invoke-direct {p0, v3, v9, v10}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/lang/String;J)V

    .line 445
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    goto :goto_1

    .line 447
    :cond_1
    sget v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    iput v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    const/4 v0, 0x2

    .line 448
    iput v0, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    .line 449
    iput-object v8, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    .line 453
    :goto_1
    sget-object v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v6

    .line 454
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v3, v6, v7}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 456
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v0

    .line 457
    new-instance v3, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v3, v1}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 458
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    .line 459
    :goto_2
    invoke-virtual {v3}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v9

    if-ge v9, v1, :cond_2

    .line 460
    invoke-static {v0, v3}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v9

    .line 461
    iget-object v10, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 464
    const-string v0, "td"

    invoke-direct {p0, v0, v6, v7}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/lang/String;J)V

    .line 468
    :cond_3
    sget-object v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_5

    .line 470
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v2

    .line 471
    new-instance v3, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v3, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 473
    invoke-virtual {v3, v2}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 474
    iput-object v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    .line 475
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 476
    const-string v2, "vi"

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/lang/String;J)V

    :cond_4
    return-void

    .line 479
    :cond_5
    iput-object v8, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    return-void
.end method

.method private loadExtraDataSubV3()V
    .locals 8

    .line 487
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    const/4 v1, 0x0

    .line 489
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 490
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 491
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 493
    iput v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    const/4 v2, 0x3

    .line 494
    iget v3, p0, Lcom/metamoji/df/model/ModelManager;->preferredStateDataVersion:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    .line 497
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    .line 498
    new-instance v2, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v2, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 500
    invoke-virtual {v2, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 501
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    .line 504
    const-string v0, "pp"

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    .line 507
    new-instance v2, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v2, v0}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    goto :goto_0

    .line 509
    :cond_0
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 510
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 514
    :goto_0
    const-string v0, "td"

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    iget-object v7, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v7, v2, v3}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 518
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v0

    .line 519
    new-instance v2, Lcom/metamoji/cm/mutable/MutableInt;

    invoke-direct {v2, v1}, Lcom/metamoji/cm/mutable/MutableInt;-><init>(I)V

    .line 520
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    .line 521
    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/MutableInt;->getValue()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 522
    invoke-static {v0, v2}, Lcom/metamoji/df/model/ByteData;->readZeroTerminatedUTF8String([BLcom/metamoji/cm/mutable/MutableInt;)Ljava/lang/String;

    move-result-object v3

    .line 523
    iget-object v7, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_1
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    .line 528
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 532
    :cond_2
    const-string v0, "vi"

    invoke-direct {p0, v0}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_3

    .line 534
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v0

    .line 535
    new-instance v1, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v1, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 537
    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/PlainValueSerializer;->readValue([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 538
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 540
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    .line 543
    :goto_2
    iput-boolean v6, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    return-void
.end method

.method private readExtraTable(Ljava/lang/String;)J
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static readExtraTable(Ljava/util/Map;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 757
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 761
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    return-wide v0

    :cond_1
    const/4 p1, 0x0

    .line 764
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v0

    sget v1, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sget v2, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    mul-int/2addr p2, v2

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->reposition([BI)V

    return-void
.end method

.method private saveExtraData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 2

    .line 551
    iget v0, p0, Lcom/metamoji/df/model/ModelManager;->currentStateDataVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 552
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->saveExtraDataSubV3(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void

    .line 554
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->saveExtraDataSubV2(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method

.method private saveExtraDataSubV2(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 11

    .line 563
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;-><init>([BI)V

    .line 564
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v3

    sget v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    iget-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 569
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v6

    .line 571
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v1

    .line 574
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v1, :cond_0

    .line 572
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v5}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    goto :goto_0

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4, v1, v6, v7}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v4

    :goto_0
    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    .line 577
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->modelTypeDicPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1, v4, v5}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 581
    :goto_1
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    goto :goto_2

    :cond_2
    move v1, v2

    .line 585
    :goto_2
    iget-boolean v4, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    if-eqz v4, :cond_7

    .line 587
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 588
    new-instance v4, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v4, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 589
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    invoke-virtual {v4, v5}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;

    move-result-object v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    move-object v6, v4

    .line 591
    sget-object v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v7

    if-eqz v6, :cond_5

    .line 594
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v4

    .line 597
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v4, :cond_4

    .line 595
    invoke-virtual {v6}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v4

    int-to-long v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    goto :goto_4

    .line 597
    :cond_4
    invoke-virtual {v5, v6, v7, v8}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v4

    :goto_4
    cmp-long v6, v7, v4

    if-eqz v6, :cond_6

    .line 600
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1, v4, v5}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    goto :goto_5

    :cond_5
    const-wide/16 v4, -0x1

    cmp-long v6, v4, v7

    if-eqz v6, :cond_6

    .line 605
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v1, v7, v8}, Lcom/metamoji/df/model/StateData;->deleteData(J)V

    .line 606
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->versionInfoPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1, v4, v5}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    :goto_5
    move v1, v3

    .line 611
    :cond_6
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    :cond_7
    if-eqz v1, :cond_8

    .line 616
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    sget v4, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableHeaderV2;->SIZE:I

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    iput-boolean v3, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 621
    :cond_8
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    if-eqz v0, :cond_b

    .line 622
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 625
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v1

    .line 628
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v1, :cond_9

    .line 626
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v6

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v4

    goto :goto_6

    .line 628
    :cond_9
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v4

    .line 630
    :goto_6
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_a

    .line 631
    invoke-virtual {v0, v4, v5}, Lcom/metamoji/df/model/StateDataHeader;->setExtraTablePos(J)V

    .line 632
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 635
    :cond_a
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    :cond_b
    return-void
.end method

.method private saveExtraDataSubV3(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 9

    .line 645
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    const-string v2, "td"

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/df/model/ModelManager;->saveOneExtraTableData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 647
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 654
    new-instance v0, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v0, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 655
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 657
    :goto_0
    const-string v2, "vi"

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/df/model/ModelManager;->saveOneExtraTableData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 658
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    const-string v2, "pp"

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/df/model/ModelManager;->saveOneExtraTableData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 664
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    .line 668
    :cond_3
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    if-eqz v0, :cond_4

    .line 669
    invoke-static {}, Lcom/metamoji/df/model/ModelModuleInfo;->getDefaultModelModuleInfo()Lcom/metamoji/df/model/ModelModuleInfo;

    move-result-object v0

    .line 670
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 671
    const-string v3, "pnm"

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelModuleInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v3, "pvs"

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelModuleInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "cpb"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v0, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v0, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 676
    invoke-virtual {v0, v2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;

    move-result-object v0

    .line 678
    const-string v2, "ci"

    invoke-direct {p0, v0, v2, p1}, Lcom/metamoji/df/model/ModelManager;->saveOneExtraTableData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 680
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->creatorInfoNeeded:Z

    .line 684
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTableModified:Z

    if-eqz v0, :cond_8

    .line 685
    new-instance v0, Lcom/metamoji/df/model/PlainValueSerializer;

    invoke-direct {v0, p0}, Lcom/metamoji/df/model/PlainValueSerializer;-><init>(Lcom/metamoji/df/model/IModelManager;)V

    .line 686
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/metamoji/df/model/PlainValueSerializer;->writeValue(Ljava/lang/Object;)Lcom/metamoji/df/model/ByteData;

    move-result-object v4

    .line 688
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    const-wide/16 v2, -0x1

    goto :goto_1

    .line 698
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateDataHeader;->getExtraTablePos()J

    move-result-wide v2

    :goto_1
    move-wide v5, v2

    .line 701
    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result v2

    .line 704
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v2, :cond_6

    .line 702
    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v2

    int-to-long v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v2

    goto :goto_2

    .line 704
    :cond_6
    invoke-virtual {v3, v4, v5, v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v2

    :goto_2
    cmp-long v4, v5, v2

    if-eqz v4, :cond_7

    .line 707
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/df/model/StateDataHeader;->setExtraTablePos(J)V

    const/4 v0, 0x1

    .line 708
    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setStateDataHeaderModified(Z)V

    .line 711
    :cond_7
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->extraTableModified:Z

    :cond_8
    return-void
.end method

.method private saveOneExtraTableData(Lcom/metamoji/df/model/ByteData;Ljava/lang/String;Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 6

    .line 722
    invoke-direct {p0, p2}, Lcom/metamoji/df/model/ModelManager;->readExtraTable(Ljava/lang/String;)J

    move-result-wide v2

    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {p3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result p3

    .line 728
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz p3, :cond_0

    .line 726
    invoke-virtual {p1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result p3

    int-to-long v4, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 728
    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v0

    :goto_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 731
    invoke-direct {p0, p2, v0, v1}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/lang/String;J)V

    return-void

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 735
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/df/model/StateData;->deleteData(J)V

    .line 736
    invoke-direct {p0, p2, v0, v1}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method private static setPreloadedPropertyItemFlag(Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;Lcom/metamoji/cm/Structured$UInt8LEMember;Lcom/metamoji/cm/Structured$UInt8LEMember;SLjava/lang/Object;)Z
    .locals 4

    .line 896
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S

    move-result v0

    .line 897
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S

    move-result v1

    and-int v2, v0, p3

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    .line 901
    instance-of p1, p4, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int p1, v1, p3

    if-nez p1, :cond_4

    or-int p1, v1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 903
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    return v3

    :cond_0
    and-int p1, v1, p3

    if-eqz p1, :cond_4

    not-int p1, p3

    and-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 908
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    return v3

    :cond_1
    not-int p3, p3

    and-int p4, v0, p3

    and-int/lit16 p4, p4, 0xff

    int-to-short p4, p4

    .line 913
    invoke-virtual {p0, p1, p4}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    and-int p1, v1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 914
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    return v3

    :cond_2
    if-eqz p4, :cond_4

    or-int/2addr v0, p3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 919
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    .line 920
    instance-of p1, p4, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    or-int p1, v1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 921
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    goto :goto_0

    :cond_3
    not-int p1, p3

    and-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 923
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    :goto_0
    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private workOnPreloadedPropsDataWhenDestroyModel(I)V
    .locals 4

    .line 841
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    .line 842
    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    .line 845
    sget-object p1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    const v1, 0xffff

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V

    const/4 p1, 0x1

    .line 846
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    return-void
.end method

.method private workOnPreloadedPropsDataWhenNewModel(ILjava/lang/String;)V
    .locals 6

    .line 796
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    .line 797
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    .line 798
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsV1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt8LEMember;S)V

    .line 799
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V

    .line 803
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 805
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 806
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 807
    sget-object p2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, p2, v3}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v3, 0xffff

    if-ge v1, v3, :cond_3

    .line 819
    sget-object v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V

    .line 820
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1, p2}, Lcom/metamoji/df/model/ByteData;->appendZeroTerminatedUTF8String(Ljava/lang/String;)V

    .line 822
    iput-boolean v4, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionaryModified:Z

    .line 826
    :goto_1
    iget p2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v1, p1

    add-int/2addr p2, v1

    .line 827
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 828
    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->getData()[B

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v0

    sget v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 830
    :cond_2
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->getData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 832
    :goto_2
    iput-boolean v4, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z

    return-void

    .line 816
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0017"

    const-string v0, "too many types are used!"

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private writeExtraTable(Ljava/lang/String;J)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->extraTable:Ljava/util/Map;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/df/model/ModelManager;->writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 774
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->extraTableModified:Z

    return-void
.end method

.method static writeExtraTable(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    long-to-int v1, p2

    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x20

    ushr-long/2addr p2, v1

    long-to-int p2, p2

    .line 786
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addChildModel(II)V
    .locals 6

    .line 1243
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1246
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 1247
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v1

    .line 1249
    sget-object v2, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    .line 1251
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    .line 1254
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object v2

    .line 1256
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1259
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1260
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1261
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v0, p2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    goto :goto_0

    .line 1264
    :cond_1
    invoke-virtual {p0, v4}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v3

    .line 1265
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v3, v5, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1266
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1267
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v3, p2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1268
    sget-object p2, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    :goto_0
    const/4 p2, 0x1

    .line 1271
    iput-boolean p2, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 1274
    invoke-virtual {v2, p1}, Lcom/metamoji/df/model/Model;->childModelAdded(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1277
    throw p1
.end method

.method public addUndo(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 1679
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 1680
    const-string p1, "invalid undoModel in addUndo()"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 1684
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->addUndoModel(I)V

    return-void
.end method

.method public addUsedVersionInfo(Lcom/metamoji/df/model/Model;)V
    .locals 4

    .line 1146
    invoke-virtual {p1}, Lcom/metamoji/df/model/Model;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-virtual {p1}, Lcom/metamoji/df/model/Model;->getVersion()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    .line 1154
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_2

    .line 1158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1159
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    .line 1162
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1163
    iput-boolean v2, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    .line 1837
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1838
    const-string p1, "invalid model in callUndoPerformer()"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 1842
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/ModelManager;->callUndoPerformerWithModelIndex(IZ)V

    return-void
.end method

.method public callUndoPerformerForCheckVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 1865
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1866
    const-string p1, "invalid model in callUndoPerformerForCheckVersion()"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1870
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->callUndoPerformerForCheckVersionWithModelIndex(I)Z

    move-result p1

    return p1
.end method

.method public canRedo()Z
    .locals 4

    .line 1762
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1765
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    div-int/2addr v0, v1

    .line 1766
    new-instance v1, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1767
    sget-object v2, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/UndoTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v0, :cond_0

    const/4 v3, 0x1

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1770
    throw v0
.end method

.method public canUndo()Z
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1750
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1751
    sget-object v1, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/UndoTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1754
    throw v0
.end method

.method public checkUndoVersion()Z
    .locals 6

    .line 1656
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    div-int/2addr v0, v1

    .line 1660
    new-instance v1, Lcom/metamoji/df/model/UndoTableItem;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/metamoji/df/model/UndoTableItem;-><init>([BI)V

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1662
    sget v4, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sget v5, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/UndoTableItem;->reposition(I)V

    .line 1663
    sget-object v4, Lcom/metamoji/df/model/UndoTableItem;->dataModel:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/UndoTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v4

    .line 1664
    invoke-direct {p0, v4}, Lcom/metamoji/df/model/ModelManager;->callUndoPerformerForCheckVersionWithModelIndex(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1671
    throw v0
.end method

.method public cleanupModels(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 6

    .line 1895
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1898
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelTableItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableItem;-><init>([BI)V

    .line 1899
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v1

    sget v3, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sub-int/2addr v1, v3

    sget v3, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    div-int/2addr v1, v3

    .line 1900
    invoke-virtual {p1, v1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->readyWithModelCount(I)V

    .line 1903
    invoke-virtual {p0}, Lcom/metamoji/df/model/ModelManager;->clearAllUndo()V

    .line 1906
    new-instance v3, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1907
    sget-object v4, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v3, v4}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    .line 1909
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->setModelUndestroyable(I)V

    .line 1910
    invoke-direct {p0, v0, v3}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 1911
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v3

    goto :goto_0

    .line 1915
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->getRootModelOfTree()I

    move-result v3

    if-eq v4, v3, :cond_1

    .line 1917
    invoke-direct {p0, v3, p1}, Lcom/metamoji/df/model/ModelManager;->cleanupModelWithSubTree(ILcom/metamoji/df/model/ModelManagerCleanupContext;)V

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 1923
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->isModelUndestroyable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1924
    invoke-direct {p0, v0, v3}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 1925
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 1926
    invoke-virtual {p1, v5}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->isModelUndestroyable(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1927
    invoke-virtual {p0, v3}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    .line 1935
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->isModelUndestroyable(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1936
    invoke-direct {p0, v0, v3}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 1937
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v5}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1939
    invoke-virtual {p1, v3}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->setModelUndestroyable(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v2, v1, :cond_8

    .line 1946
    invoke-virtual {p1, v2}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->isModelUndestroyable(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1947
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/Model;

    if-nez v0, :cond_6

    .line 1949
    invoke-virtual {p0, v2}, Lcom/metamoji/df/model/ModelManager;->destroyModel(I)V

    goto :goto_4

    .line 1951
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/df/model/Model;->destroy()V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1957
    :cond_8
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->ensureSavedCore(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 1960
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateData;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1963
    throw p1
.end method

.method public clearAllUndo()V
    .locals 3

    .line 1723
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1726
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1738
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1731
    :try_start_1
    invoke-direct {p0, v0}, Lcom/metamoji/df/model/ModelManager;->destroyModelsInUndoTable(I)V

    .line 1733
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    sget v2, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ByteData;->setLength(I)V

    .line 1734
    new-instance v1, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1735
    sget-object v2, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/df/model/UndoTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    const/4 v0, 0x1

    .line 1736
    iput-boolean v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1738
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1739
    throw v0
.end method

.method public close()V
    .locals 0

    .line 1219
    invoke-virtual {p0}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    return-void
.end method

.method protected deletePreloadedProperty(Ljava/lang/String;I)V
    .locals 1

    .line 1024
    const-string v0, "!version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "!stopPropergation"

    .line 1025
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1026
    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/df/model/ModelManager;->setPreloadedProperty(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method protected destroyModel(I)V
    .locals 9

    .line 1392
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1395
    :try_start_0
    const-string v0, "!type"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, "destroying a destroyed model. index = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1401
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 1404
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    .line 1405
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    .line 1409
    :cond_1
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    :goto_1
    if-eq v2, v1, :cond_3

    .line 1411
    invoke-direct {p0, v0, v1}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 1412
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v3

    .line 1414
    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/model/Model;

    if-nez v4, :cond_2

    .line 1416
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->destroyModel(I)V

    goto :goto_2

    .line 1418
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/df/model/Model;->destroy()V

    :goto_2
    move v1, v3

    goto :goto_1

    .line 1425
    :cond_3
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/Model;

    if-eqz v1, :cond_4

    .line 1427
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1432
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->workOnPreloadedPropsDataWhenDestroyModel(I)V

    .line 1435
    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->repositionModelItem(Lcom/metamoji/df/model/ModelTableItem;I)V

    .line 1438
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v5, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 1439
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    if-nez v1, :cond_5

    .line 1440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    .line 1442
    :cond_5
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {v0, v1, v5, v6}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 1444
    iput-boolean v3, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 1448
    :cond_6
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    if-eqz v1, :cond_7

    .line 1449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1453
    :cond_7
    new-instance v1, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1454
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1455
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1456
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1457
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1458
    sget-object v2, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    sget-object v4, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1459
    sget-object v0, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/df/model/ModelTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1460
    iput-boolean v3, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 1462
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1463
    throw p1
.end method

.method protected destruct()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-interface {v0, v2}, Lcom/metamoji/cm/ICmAppLowMemory;->removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;->destruct()V

    .line 131
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/Model;

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v2}, Lcom/metamoji/df/model/Model;->destruct()V

    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->destroyPreloadPropsData()V

    .line 146
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    .line 149
    :cond_4
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    .line 151
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    .line 152
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    .line 153
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    .line 154
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    .line 156
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->deletedModelDataList:Ljava/util/List;

    .line 157
    iput-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 160
    throw v0
.end method

.method public ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2023
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/df/model/ModelManager;->ensureSavedCore(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2025
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2026
    throw p1
.end method

.method protected getAllPreloadedPropertyNames(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1040
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    .line 1042
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result v1

    const v2, 0xffff

    if-eq v2, v1, :cond_0

    .line 1044
    const-string v1, "!type"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_0
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1047
    const-string v1, "!version"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_1
    sget-object v1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt8LEMember;)S

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1050
    const-string v0, "!stopPropergation"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1056
    throw p1
.end method

.method public getModel(I)Lcom/metamoji/df/model/Model;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/Model;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "!type"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/model/ModelManager;->generateModel(Ljava/lang/String;I)Lcom/metamoji/df/model/Model;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getModelByID(I)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1233
    throw p1
.end method

.method public getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;
    .locals 4

    .line 280
    new-instance v0, Lcom/metamoji/df/model/ModelTableItem;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    sget v2, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sget v3, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    mul-int/2addr p1, v3

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableItem;-><init>([BI)V

    return-object v0
.end method

.method public getOnMemoryModelAsByteArray()[B
    .locals 2

    .line 2151
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2154
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->getResultBuffer()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2157
    throw v0
.end method

.method protected getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    .line 950
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 953
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    .line 955
    const-string p2, "!type"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 956
    sget-object p1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->typeIndex:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const p2, 0xffff

    if-ne p2, p1, :cond_1

    .line 975
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 960
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->modelTypeDictionary:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    :goto_1
    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 962
    :cond_2
    :try_start_2
    const-string p2, "!version"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 963
    sget-object p1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 967
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    .line 969
    :cond_4
    const-string p2, "!stopPropergation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 970
    sget-object p1, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    sget-object p2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsV1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/metamoji/df/model/ModelManager;->getPreloadedPropertyItemFlag(Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;Lcom/metamoji/cm/Structured$UInt8LEMember;Lcom/metamoji/cm/Structured$UInt8LEMember;S)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 975
    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 976
    throw p1
.end method

.method public getRootModel()Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1577
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1578
    sget-object v1, Lcom/metamoji/df/model/ModelTableHeader;->treeRootIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 1585
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    .line 1582
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1586
    throw v0
.end method

.method public getUsedVersionInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1184
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected hasPreloadedProperty(Ljava/lang/String;I)Z
    .locals 0

    .line 939
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/ModelManager;->getPreloadedProperty(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;
    .locals 3

    if-eqz p1, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1530
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/metamoji/df/model/ModelManagerImportContext;->getDestModelCorrespondingTo(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 1532
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 1534
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/df/model/ModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1535
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/df/model/ModelManager;->addChildModel(II)V

    .line 1537
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1542
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1543
    throw p1

    .line 1524
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MD0025"

    const-string p3, "srcModel must not be null"

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public importModels(Ljava/util/List;ZLcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;Z",
            "Lcom/metamoji/df/model/ModelManagerImportContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 1551
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1554
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1558
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1559
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 1560
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/df/model/ModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1561
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1565
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1566
    throw p1
.end method

.method public insertChildModel(III)V
    .locals 6

    .line 1288
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, -0x1

    if-ne v0, p3, :cond_0

    .line 1292
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/ModelManager;->addChildModel(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1296
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v1

    .line 1297
    sget-object v2, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v2

    if-eq v2, p2, :cond_1

    goto :goto_0

    .line 1301
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v2

    .line 1302
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 1304
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    .line 1307
    :cond_2
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object v3

    .line 1309
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 1312
    invoke-virtual {p0, v4}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 1313
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v5, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    goto :goto_1

    .line 1316
    :cond_3
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 1317
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v5, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1320
    :goto_1
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1321
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v0, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1322
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v0, p3}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1323
    sget-object p3, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, p3, p2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    const/4 p2, 0x1

    .line 1325
    iput-boolean p2, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 1328
    invoke-virtual {v3, p1}, Lcom/metamoji/df/model/Model;->childModelAdded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1330
    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1331
    throw p1
.end method

.method public isPreloadProperty(Ljava/lang/String;)Z
    .locals 1

    .line 872
    const-string v0, "!type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "!version"

    .line 873
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "!stopPropergation"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public lock()V
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 7

    if-eqz p1, :cond_2

    .line 1475
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1481
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1482
    sget-object v1, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    .line 1485
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v2

    .line 1486
    sget-object v5, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    sget-object v6, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v6}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/metamoji/df/model/ModelTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1487
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v0, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1488
    iput-boolean v3, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    goto :goto_0

    .line 1490
    :cond_0
    new-instance v0, Lcom/metamoji/df/model/ModelTableItem;

    sget v1, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    new-array v1, v1, [B

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelTableItem;-><init>([BI)V

    .line 1491
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v1, v5, v6}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    .line 1492
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1493
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1494
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1495
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1496
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1498
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ModelTableItem;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 1499
    iput-boolean v3, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 1501
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1504
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/metamoji/df/model/ModelManager;->generateModel(Ljava/lang/String;I)Lcom/metamoji/df/model/Model;

    move-result-object v0

    .line 1505
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    if-ge v1, v2, :cond_1

    .line 1506
    :try_start_1
    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1508
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/metamoji/df/model/ModelManager;->workOnPreloadedPropsDataWhenNewModel(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1515
    throw p1

    .line 1472
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MD0024"

    const-string v1, "typeID must not be null"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public openExisting(Lcom/metamoji/df/model/StateData;)Z
    .locals 7

    .line 218
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    .line 223
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    .line 226
    invoke-virtual {p1}, Lcom/metamoji/df/model/StateData;->getHeader()Lcom/metamoji/df/model/StateDataHeader;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v2

    const/4 v3, 0x1

    if-le v3, v2, :cond_0

    .line 230
    const-string v2, "ModelManager: statedata has too old version %d"

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move v3, v1

    goto :goto_2

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result v2

    const/4 v4, 0x3

    if-ge v4, v2, :cond_1

    .line 233
    const-string v2, "ModelManager: statedata has too recent version %d"

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getFormatVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_1
    new-instance v2, Lcom/metamoji/df/model/ByteData;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getModelTablePos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v2, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    .line 238
    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v2

    sget v4, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    sub-int/2addr v2, v4

    sget v4, Lcom/metamoji/df/model/ModelTableItem;->SIZE:I

    div-int/2addr v2, v4

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_2

    .line 241
    iget-object v5, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 242
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 245
    new-instance v2, Lcom/metamoji/df/model/ByteData;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/StateDataHeader;->getUndoTablePos()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    .line 246
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z

    .line 249
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->loadExtraData()V

    .line 252
    :goto_2
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    if-nez p1, :cond_3

    .line 253
    new-instance p1, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-direct {p1, p0}, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;-><init>(Lcom/metamoji/df/model/ModelManager;)V

    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    .line 254
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 256
    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-interface {p1, v2}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 262
    :try_start_1
    const-string v2, "ModelManager: error in opening state file."

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz p1, :cond_4

    .line 264
    invoke-virtual {p1}, Lcom/metamoji/df/model/StateData;->destroy()V

    .line 265
    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :goto_3
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    throw p1
.end method

.method public openNew(Lcom/metamoji/df/model/StateData;)Z
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    .line 177
    new-instance p1, Lcom/metamoji/df/model/ByteData;

    invoke-direct {p1}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    .line 180
    new-instance p1, Lcom/metamoji/df/model/ModelTableHeader;

    sget v0, Lcom/metamoji/df/model/ModelTableHeader;->SIZE:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 181
    sget-object v0, Lcom/metamoji/df/model/ModelTableHeader;->treeRootIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/df/model/ModelTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 182
    sget-object v0, Lcom/metamoji/df/model/ModelTableHeader;->boneyardTopIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/df/model/ModelTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {p1}, Lcom/metamoji/df/model/ModelTableHeader;->getData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    .line 187
    new-instance v0, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v0}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    .line 188
    new-instance v0, Lcom/metamoji/df/model/UndoTableHeader;

    sget v2, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    new-array v2, v2, [B

    invoke-direct {v0, v2, v1}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 189
    sget-object v2, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/model/UndoTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 190
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/UndoTableHeader;->getData()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    .line 191
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z

    .line 194
    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManager;->createExtraData()V

    .line 197
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-direct {v0, p0}, Lcom/metamoji/df/model/ModelManager$LowMemoryListener;-><init>(Lcom/metamoji/df/model/ModelManager;)V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    .line 199
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getAppLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->lowMemoryListener:Lcom/metamoji/df/model/ModelManager$LowMemoryListener;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmAppLowMemory;->addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    throw p1
.end method

.method public purgeModelMemory(IZ)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/Model;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/metamoji/df/model/Model;->freeUpMemory()V

    :cond_0
    if-eqz p2, :cond_1

    .line 1109
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 1110
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    .line 1112
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/model/ModelManager;->purgeModelMemory(IZ)V

    .line 1114
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 1115
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1119
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1120
    throw p1
.end method

.method protected readModelData(I)[B
    .locals 4

    .line 326
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 327
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/df/model/StateData;->readData(J)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public redo()V
    .locals 7

    .line 1807
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1811
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v0}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v0

    sget v1, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sub-int/2addr v0, v1

    sget v1, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    div-int/2addr v0, v1

    .line 1812
    new-instance v1, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1813
    sget-object v2, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/UndoTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1819
    :cond_0
    :try_start_1
    new-instance v0, Lcom/metamoji/df/model/UndoTableItem;

    iget-object v4, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v4}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v4

    sget v5, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    sget v6, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Lcom/metamoji/df/model/UndoTableItem;-><init>([BI)V

    .line 1820
    sget-object v4, Lcom/metamoji/df/model/UndoTableItem;->dataModel:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v4}, Lcom/metamoji/df/model/UndoTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v0

    .line 1822
    sget-object v4, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    const/4 v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {v1, v4, v2}, Lcom/metamoji/df/model/UndoTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1823
    iput-boolean v5, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1825
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1829
    invoke-direct {p0, v0, v3}, Lcom/metamoji/df/model/ModelManager;->callUndoPerformerWithModelIndex(IZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 1825
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1826
    throw v0
.end method

.method public registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->undoPerformerDictionary:Ljava/util/Map;

    if-nez p2, :cond_1

    .line 1645
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1647
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rememberModelContentModified(Lcom/metamoji/df/model/Model;)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->modifiedModels:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/metamoji/df/model/Model;->getModelID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1137
    throw p1
.end method

.method public removeModelFromParent(I)V
    .locals 6

    .line 1340
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1343
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v0

    .line 1344
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 1379
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1349
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object v3

    .line 1352
    invoke-virtual {v3, p1}, Lcom/metamoji/df/model/Model;->childModelWillBeRemoved(I)V

    .line 1354
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 1355
    sget-object v1, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    .line 1356
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v3

    if-eq v2, v1, :cond_1

    .line 1359
    invoke-virtual {p0, v1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v4

    .line 1360
    sget-object v5, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    goto :goto_1

    .line 1363
    :cond_1
    sget-object v4, Lcom/metamoji/df/model/ModelTableItem;->firstChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v4, v3}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    :goto_1
    if-eq v2, v3, :cond_2

    .line 1367
    invoke-virtual {p0, v3}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p1

    .line 1368
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v3, v1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    goto :goto_2

    .line 1371
    :cond_2
    sget-object v3, Lcom/metamoji/df/model/ModelTableItem;->lastChild:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {p1, v3, v1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1374
    :goto_2
    sget-object p1, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1375
    sget-object p1, Lcom/metamoji/df/model/ModelTableItem;->prevSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1376
    sget-object p1, Lcom/metamoji/df/model/ModelTableItem;->nextSibling:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    const/4 p1, 0x1

    .line 1377
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1379
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1380
    throw p1
.end method

.method public replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 1603
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1608
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    .line 1609
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object v1

    .line 1611
    sget-object v2, Lcom/metamoji/df/model/ModelTableItem;->parent:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1613
    invoke-virtual {p0, p1}, Lcom/metamoji/df/model/ModelManager;->removeModelFromParent(I)V

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1617
    :cond_1
    :goto_0
    new-instance v1, Lcom/metamoji/df/model/ModelTableHeader;

    iget-object v2, p0, Lcom/metamoji/df/model/ModelManager;->modelTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/metamoji/df/model/ModelTableHeader;-><init>([BI)V

    .line 1618
    sget-object v2, Lcom/metamoji/df/model/ModelTableHeader;->treeRootIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v2}, Lcom/metamoji/df/model/ModelTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 1620
    sget-object v3, Lcom/metamoji/df/model/ModelTableHeader;->treeRootIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v1, v3, p1}, Lcom/metamoji/df/model/ModelTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    const/4 p1, 0x1

    .line 1621
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 1630
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    .line 1627
    :cond_3
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/metamoji/df/model/ModelManager;->getModel(I)Lcom/metamoji/df/model/Model;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1631
    throw p1
.end method

.method protected setPreloadedProperty(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 4

    .line 987
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 990
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableHeaderSize:I

    sget v3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->SIZE:I

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;-><init>([BI)V

    .line 994
    const-string p3, "!version"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    .line 999
    :cond_1
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1001
    :goto_0
    sget-object p2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, p2}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->get(Lcom/metamoji/cm/Structured$UInt16LEMember;)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 1002
    sget-object p2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->version:Lcom/metamoji/cm/Structured$UInt16LEMember;

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->set(Lcom/metamoji/cm/Structured$UInt16LEMember;I)V

    move v2, v1

    goto :goto_1

    .line 1005
    :cond_2
    const-string p3, "!stopPropergation"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1006
    sget-object p2, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsS1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    sget-object p3, Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;->flagsV1:Lcom/metamoji/cm/Structured$UInt8LEMember;

    invoke-static {v0, p2, p3, v1, p1}, Lcom/metamoji/df/model/ModelManager;->setPreloadedPropertyItemFlag(Lcom/metamoji/df/model/ModelManagerPreloadedPropsTableItem;Lcom/metamoji/cm/Structured$UInt8LEMember;Lcom/metamoji/cm/Structured$UInt8LEMember;SLjava/lang/Object;)Z

    move-result v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 1010
    iput-boolean v1, p0, Lcom/metamoji/df/model/ModelManager;->preloadedPropsTableModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    :cond_4
    iget-object p1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1014
    throw p1
.end method

.method public setUsedVersionInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1173
    iput-object p1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionary:Ljava/util/Map;

    const/4 p1, 0x1

    .line 1174
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->versionInfoDictionaryModified:Z

    return-void
.end method

.method public undo()V
    .locals 7

    .line 1778
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1782
    :try_start_0
    new-instance v0, Lcom/metamoji/df/model/UndoTableHeader;

    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v1}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/df/model/UndoTableHeader;-><init>([BI)V

    .line 1783
    sget-object v1, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/UndoTableHeader;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1789
    :cond_0
    :try_start_1
    new-instance v2, Lcom/metamoji/df/model/UndoTableItem;

    iget-object v3, p0, Lcom/metamoji/df/model/ModelManager;->undoTable:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v3

    sget v4, Lcom/metamoji/df/model/UndoTableHeader;->SIZE:I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    sget v6, Lcom/metamoji/df/model/UndoTableItem;->SIZE:I

    mul-int/2addr v6, v1

    add-int/2addr v4, v6

    invoke-direct {v2, v3, v4}, Lcom/metamoji/df/model/UndoTableItem;-><init>([BI)V

    .line 1790
    sget-object v3, Lcom/metamoji/df/model/UndoTableItem;->dataModel:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/model/UndoTableItem;->get(Lcom/metamoji/cm/Structured$SInt32LEMember;)I

    move-result v2

    .line 1792
    sget-object v3, Lcom/metamoji/df/model/UndoTableHeader;->currentUndoIndex:Lcom/metamoji/cm/Structured$SInt32LEMember;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/df/model/UndoTableHeader;->set(Lcom/metamoji/cm/Structured$SInt32LEMember;I)V

    .line 1793
    iput-boolean v5, p0, Lcom/metamoji/df/model/ModelManager;->undoTableModified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1795
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1799
    invoke-direct {p0, v2, v5}, Lcom/metamoji/df/model/ModelManager;->callUndoPerformerWithModelIndex(IZ)V

    return-void

    :catchall_0
    move-exception v0

    .line 1795
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1796
    throw v0
.end method

.method public unlock()V
    .locals 1

    .line 2180
    iget-object v0, p0, Lcom/metamoji/df/model/ModelManager;->mAutoLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected writeModelData(Lcom/metamoji/df/model/ByteData;ILcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 7

    .line 343
    invoke-virtual {p0, p2}, Lcom/metamoji/df/model/ModelManager;->getModelItem(I)Lcom/metamoji/df/model/ModelTableItem;

    move-result-object p2

    .line 344
    sget-object v0, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {p2, v0}, Lcom/metamoji/df/model/ModelTableItem;->get(Lcom/metamoji/cm/Structured$UInt64LEMember;)J

    move-result-wide v3

    .line 346
    invoke-virtual {p3}, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped()Z

    move-result p3

    .line 349
    iget-object v1, p0, Lcom/metamoji/df/model/ModelManager;->stateData:Lcom/metamoji/df/model/StateData;

    if-eqz p3, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result p3

    int-to-long v5, p3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 349
    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/df/model/StateData;->writeData(Lcom/metamoji/df/model/ByteData;J)J

    move-result-wide v0

    :goto_0
    cmp-long p1, v3, v0

    if-eqz p1, :cond_1

    .line 353
    sget-object p1, Lcom/metamoji/df/model/ModelTableItem;->dataPosition:Lcom/metamoji/cm/Structured$UInt64LEMember;

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/df/model/ModelTableItem;->set(Lcom/metamoji/cm/Structured$UInt64LEMember;J)V

    const/4 p1, 0x1

    .line 354
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManager;->modelTableModified:Z

    :cond_1
    return-void
.end method
