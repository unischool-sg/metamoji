.class public Lcom/metamoji/df/controller/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/SettingsManager$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "settings"


# instance fields
.field private _accessorsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/ISettings;",
            ">;"
        }
    .end annotation
.end field

.field private _factory:Lcom/metamoji/df/controller/SettingsFactory;

.field private _mapModel:Lcom/metamoji/df/model/IModel;

.field private _model:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    .line 17
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_factory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 18
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    .line 19
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/ISettings;

    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v1}, Lcom/metamoji/df/controller/ISettings;->destroy()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    .line 58
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_factory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 59
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    .line 60
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    return-void
.end method

.method public getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/ISettings;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/metamoji/df/controller/SettingsManager;->_factory:Lcom/metamoji/df/controller/SettingsFactory;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/df/controller/SettingsFactory;->createSettings(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/controller/SettingsManager;->_factory:Lcom/metamoji/df/controller/SettingsFactory;

    invoke-virtual {v1, p0, p1, v0}, Lcom/metamoji/df/controller/SettingsFactory;->createAccessor(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/metamoji/df/controller/ISettings;->init()V

    .line 86
    iget-object v1, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    .line 34
    iput-object p2, p0, Lcom/metamoji/df/controller/SettingsManager;->_factory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    .line 37
    iget-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "settings"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    .line 40
    iget-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 41
    iget-object p1, p0, Lcom/metamoji/df/controller/SettingsManager;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method public replaceSettingsModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public resetAllSettings()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/df/controller/SettingsManager;->resetSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public resetSettings(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_accessorsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public settingsModelForType(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method
