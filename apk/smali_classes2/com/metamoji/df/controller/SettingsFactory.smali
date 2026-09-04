.class public Lcom/metamoji/df/controller/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/SettingsFactory$IInitializer;,
        Lcom/metamoji/df/controller/SettingsFactory$IFactory;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field private _accessorFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/SettingsFactory$IFactory;",
            ">;"
        }
    .end annotation
.end field

.field private _settingsFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/SettingsFactory$IInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_settingsFactoryMap:Ljava/util/Map;

    .line 42
    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_accessorFactoryMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_settingsFactoryMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_accessorFactoryMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createAccessor(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_accessorFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/SettingsFactory$IFactory;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/df/controller/SettingsFactory$IFactory;->createSettings(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lcom/metamoji/df/controller/Settings;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    move-object p1, v0

    .line 102
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/df/controller/ISettings;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "create settings accessor failed : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSettings(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_settingsFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/SettingsFactory$IInitializer;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p2}, Lcom/metamoji/df/controller/SettingsFactory$IInitializer;->initSettings(Lcom/metamoji/df/model/IModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create initial settings failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/df/controller/SettingsFactory;->_settingsFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p2, p0, Lcom/metamoji/df/controller/SettingsFactory;->_accessorFactoryMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
