.class public Lcom/metamoji/df/model/ModelManagerFactory;
.super Ljava/lang/Object;
.source "ModelManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;
    .locals 1

    const/4 v0, 0x2

    .line 20
    invoke-static {p0, p1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;I)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    return-object p0
.end method

.method public static newModelManager(Ljava/io/File;Ljava/lang/String;I)Lcom/metamoji/df/model/IModelManager;
    .locals 3

    .line 31
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lcom/metamoji/df/model/StateData;->createFile(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ModelManagerFactory.newModelManager: cannot open state file (%s)."

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 38
    :cond_0
    new-instance v1, Lcom/metamoji/df/model/ModelManager;

    invoke-direct {v1, p2}, Lcom/metamoji/df/model/ModelManager;-><init>(I)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/ModelManager;->openNew(Lcom/metamoji/df/model/StateData;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ModelManagerFactory.newModelManager: cannot openNew (%s)."

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {v1, p1}, Lcom/metamoji/df/model/ModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Lcom/metamoji/df/model/ModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_2
    return-object v1
.end method

.method public static newOnMemoryModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 4

    .line 97
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    .line 98
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->createWithBuffer()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    return-object v2

    .line 103
    :cond_0
    new-instance v1, Lcom/metamoji/df/model/ModelManager;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/metamoji/df/model/ModelManager;-><init>(I)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/metamoji/df/model/ModelManager;->openNew(Lcom/metamoji/df/model/StateData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-virtual {v1}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public static restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 58
    invoke-static {p0, v0, v1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;ZI)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    return-object p0
.end method

.method public static restoreModelManager(Ljava/io/File;Z)Lcom/metamoji/df/model/IModelManager;
    .locals 1

    const/4 v0, 0x2

    .line 62
    invoke-static {p0, p1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;ZI)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    return-object p0
.end method

.method public static restoreModelManager(Ljava/io/File;ZI)Lcom/metamoji/df/model/IModelManager;
    .locals 2

    .line 72
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    .line 73
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/df/model/StateData;->openFile(Ljava/io/File;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ModelManagerFactory.restoreModelManager: cannot open state file (%s)."

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    return-object v1

    .line 81
    :cond_0
    new-instance p0, Lcom/metamoji/df/model/ModelManager;

    invoke-direct {p0, p2}, Lcom/metamoji/df/model/ModelManager;-><init>(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/ModelManager;->openExisting(Lcom/metamoji/df/model/StateData;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    return-object v1

    :cond_1
    return-object p0
.end method

.method public static restoreOnMemoryModelManager([BZ)Lcom/metamoji/df/model/IModelManager;
    .locals 2

    .line 120
    new-instance v0, Lcom/metamoji/df/model/StateData;

    invoke-direct {v0}, Lcom/metamoji/df/model/StateData;-><init>()V

    .line 121
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/df/model/StateData;->openWithBuffer([BZ)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/metamoji/df/model/StateData;->destroy()V

    return-object p1

    .line 126
    :cond_0
    new-instance p0, Lcom/metamoji/df/model/ModelManager;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/metamoji/df/model/ModelManager;-><init>(I)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/metamoji/df/model/ModelManager;->openExisting(Lcom/metamoji/df/model/StateData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/df/model/ModelManager;->destruct()V

    return-object p1

    :cond_1
    return-object p0
.end method
