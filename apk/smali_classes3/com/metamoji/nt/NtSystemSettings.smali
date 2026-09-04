.class public Lcom/metamoji/nt/NtSystemSettings;
.super Ljava/lang/Object;
.source "NtSystemSettings.java"


# static fields
.field private static _instance:Lcom/metamoji/nt/NtSystemSettings;


# instance fields
.field private final STATE_FILE_NAME:Ljava/lang/String;

.field private _settings:Lcom/metamoji/df/controller/SystemSettings;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "SystemSettings.state"

    iput-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->STATE_FILE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    .line 37
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSystemSettings;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/NtSystemSettings;
    .locals 1

    .line 61
    sget-object v0, Lcom/metamoji/nt/NtSystemSettings;->_instance:Lcom/metamoji/nt/NtSystemSettings;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Lcom/metamoji/nt/NtSystemSettings;->initialize(Landroid/content/Context;)V

    .line 65
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtSystemSettings;->_instance:Lcom/metamoji/nt/NtSystemSettings;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .line 50
    sget-object v0, Lcom/metamoji/nt/NtSystemSettings;->_instance:Lcom/metamoji/nt/NtSystemSettings;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/metamoji/nt/NtSystemSettings;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtSystemSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/metamoji/nt/NtSystemSettings;->_instance:Lcom/metamoji/nt/NtSystemSettings;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->cleanup(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    return-void
.end method

.method public ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method

.method public getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    return-object p1
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createSystemSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v0

    .line 42
    const-string v1, "SystemSettings.state"

    invoke-static {v1, v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->open(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory;Landroid/content/Context;)Lcom/metamoji/df/controller/SystemSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    return-void
.end method

.method public replaceSettingsModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/controller/SystemSettings;->replaceSettingsModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public resetAllSettings()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/SystemSettings;->resetAllSettings()V

    return-void
.end method

.method public resetSettings(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->resetSettings(Ljava/lang/String;)V

    return-void
.end method

.method public restoreWithStateFileBase64EncodedString(Ljava/lang/String;)V
    .locals 8

    .line 144
    const-string/jumbo v0, "shapepen"

    const-string v1, "MMJScMasterPenSettings"

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    if-eqz p1, :cond_6

    .line 148
    array-length v3, p1

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 152
    :cond_1
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 154
    iget-object v4, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v4}, Lcom/metamoji/df/controller/SystemSettings;->close()V

    .line 155
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 156
    const-string v5, "SystemSettings.state"

    sget-object v6, Lcom/metamoji/cm/CmUtils$CreationOption;->REMOVE_EXISTING:Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v4, v5, v6}, Lcom/metamoji/cm/CmUtils;->safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;

    move-result-object v4

    .line 157
    invoke-static {v4, p1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 159
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSystemSettings;->init(Landroid/content/Context;)V

    .line 166
    iget-object p1, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/SystemSettings;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 167
    iget-object v4, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v4, v1}, Lcom/metamoji/df/controller/SystemSettings;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz p1, :cond_2

    if-nez v4, :cond_5

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/SystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtPenSettings;

    .line 171
    iget-object v1, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    const-string v4, "MMJScShapePenSettings"

    invoke-virtual {v1, v4}, Lcom/metamoji/df/controller/SystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPenSettings;

    .line 172
    iget-object v4, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    const-string v5, "MMJNtPenSettings"

    invoke-virtual {v4, v5}, Lcom/metamoji/df/controller/SystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtPenSettings;

    .line 173
    :goto_0
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 175
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v5

    .line 177
    iget-object v6, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 179
    const-string/jumbo v6, "standard"

    iput-object v6, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 180
    invoke-virtual {v4, v5, v2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v6, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v7, "shapemarkerpen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 184
    const-string v6, "markerpen"

    iput-object v6, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 185
    invoke-virtual {v4, v5, v2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 188
    :cond_4
    :goto_1
    invoke-virtual {p1, v5, v2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 192
    iput-object v0, v5, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 205
    invoke-virtual {v1, v5, v2}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_5
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 212
    new-instance p1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 215
    const-string v0, "NtSystemSettings:restoreWithStateFileBase64EncodedString"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/metamoji/nt/NtSystemSettings;->_settings:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SystemSettings;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method public storeStateFileBase64EncodeString()Ljava/lang/String;
    .locals 3

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "SystemSettings.state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 133
    const-string v1, "NtSystemSettings:storeWithStateFileBase64EncodeString"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
