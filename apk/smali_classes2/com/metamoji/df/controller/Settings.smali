.class public Lcom/metamoji/df/controller/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/metamoji/df/controller/ISettings;


# instance fields
.field protected _manager:Lcom/metamoji/df/controller/SettingsManager;

.field protected _model:Lcom/metamoji/df/model/IModel;

.field protected _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/metamoji/df/controller/Settings;->_manager:Lcom/metamoji/df/controller/SettingsManager;

    .line 27
    iput-object p3, p0, Lcom/metamoji/df/controller/Settings;->_model:Lcom/metamoji/df/model/IModel;

    .line 28
    iput-object p2, p0, Lcom/metamoji/df/controller/Settings;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/metamoji/df/controller/Settings;->_manager:Lcom/metamoji/df/controller/SettingsManager;

    .line 38
    iput-object v0, p0, Lcom/metamoji/df/controller/Settings;->_model:Lcom/metamoji/df/model/IModel;

    .line 39
    iput-object v0, p0, Lcom/metamoji/df/controller/Settings;->_type:Ljava/lang/String;

    return-void
.end method

.method public getModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/df/controller/Settings;->_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/df/controller/Settings;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
