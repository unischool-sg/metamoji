.class public Lcom/metamoji/nt/NtShapePenSettings;
.super Lcom/metamoji/nt/NtPenSettings;
.source "NtShapePenSettings.java"


# static fields
.field public static final MASTER_PEN_SETTINGS_TYPE:Ljava/lang/String; = "MMJScMasterPenSettings"

.field public static final SHAPE_PEN_SETTINGS_TYPE:Ljava/lang/String; = "MMJScShapePenSettings"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtPenSettings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 126
    const-string v0, "currentIndex"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 129
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtShapePenSettings;->defaultPen1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 130
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 132
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtShapePenSettings;->defaultPen2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 133
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 135
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtShapePenSettings;->defaultPen3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 136
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 138
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtShapePenSettings;->defaultPen4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 139
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 141
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtShapePenSettings;->defaultPen5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 142
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static defaultPen1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 155
    invoke-static {p0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 156
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "penType"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static defaultPen2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 175
    invoke-static {p0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 176
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "penType"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static defaultPen3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 195
    invoke-static {p0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 196
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "penType"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static defaultPen4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 215
    invoke-static {p0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 216
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "penType"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static defaultPen5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 235
    invoke-static {p0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen11(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 248
    const-string v0, "penType"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static existMasterPenSettings()Z
    .locals 2

    .line 57
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 58
    const-string v1, "MMJScMasterPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static existShapePenSettings()Z
    .locals 2

    .line 66
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 67
    const-string v1, "MMJScShapePenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;
    .locals 2

    .line 33
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->existMasterPenSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->migratePenSettings()V

    .line 37
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 38
    const-string v1, "MMJScMasterPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    return-object v0
.end method

.method public static getShapePenSettings()Lcom/metamoji/nt/NtPenSettings;
    .locals 2

    .line 46
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->existShapePenSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->migratePenSettings()V

    .line 50
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 51
    const-string v1, "MMJScShapePenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    return-object v0
.end method

.method public static migratePenSettings()V
    .locals 9

    .line 76
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    .line 77
    const-string v1, "MMJScMasterPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtPenSettings;

    .line 78
    const-string v2, "MMJScShapePenSettings"

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtPenSettings;

    .line 79
    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    const/4 v3, 0x0

    .line 80
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 82
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v4

    .line 84
    iget-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    const-string/jumbo v6, "shapepen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "markerpen"

    const-string/jumbo v8, "shapemarkerpen"

    if-eqz v5, :cond_0

    .line 86
    const-string/jumbo v5, "standard"

    iput-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v4, v3}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    goto :goto_1

    .line 89
    :cond_0
    iget-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    iput-object v7, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v4, v3}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v1, v4, v3}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    .line 99
    iget-object v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    iput-object v8, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    goto :goto_2

    .line 105
    :cond_2
    iput-object v6, v4, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    .line 119
    :goto_2
    invoke-virtual {v2, v4, v3}, Lcom/metamoji/nt/NtPenSettings;->updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
