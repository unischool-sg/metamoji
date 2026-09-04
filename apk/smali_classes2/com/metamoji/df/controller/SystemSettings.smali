.class public Lcom/metamoji/df/controller/SystemSettings;
.super Ljava/lang/Object;
.source "SystemSettings.java"


# instance fields
.field _modelManager:Lcom/metamoji/df/model/IModelManager;

.field _settingsManager:Lcom/metamoji/df/controller/SettingsManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 21
    iput-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    return-void
.end method

.method public static open(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory;Landroid/content/Context;)Lcom/metamoji/df/controller/SystemSettings;
    .locals 1

    .line 45
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object p2

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    invoke-static {v0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 58
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez p0, :cond_2

    .line 62
    const-string p0, "SystemSettings"

    invoke-static {v0, p0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    new-instance p0, Lcom/metamoji/cm/CmException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "failed to create new state file : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DF0001"

    invoke-direct {p0, p2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2
    :goto_1
    new-instance p2, Lcom/metamoji/df/controller/SystemSettings;

    invoke-direct {p2}, Lcom/metamoji/df/controller/SystemSettings;-><init>()V

    .line 71
    invoke-virtual {p2, p0, p1}, Lcom/metamoji/df/controller/SystemSettings;->init(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/SettingsFactory;)V

    return-object p2
.end method


# virtual methods
.method public cleanup(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->cleanupModels(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    new-instance v1, Lcom/metamoji/df/model/ModelManagerCleanupContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;-><init>()V

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->cleanupModels(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    return-void
.end method

.method public ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method

.method public getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    return-object p1
.end method

.method protected init(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/SettingsFactory;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 34
    new-instance p1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {p1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    .line 35
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    return-void
.end method

.method public replaceSettingsModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/controller/SettingsManager;->replaceSettingsModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public resetAllSettings()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/SettingsManager;->resetAllSettings()V

    return-void
.end method

.method public resetSettings(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SettingsManager;->resetSettings(Ljava/lang/String;)V

    return-void
.end method

.method public settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/metamoji/df/controller/SystemSettings;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SettingsManager;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method
