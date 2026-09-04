.class public Lcom/metamoji/ctold/template/CtTemplateManager;
.super Ljava/lang/Object;
.source "CtTemplateManager.java"


# static fields
.field private static SINGLETON:Lcom/metamoji/ctold/template/CtTemplateManager;


# instance fields
.field private noteTagTemplates:Lcom/metamoji/ctold/template/CtNoteTagTemplates;

.field private settingsManager:Lcom/metamoji/df/controller/SystemSettings;

.field private systemTagTemplateSettings:Lcom/metamoji/ctold/template/CtTagTemplateSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/metamoji/ctold/template/CtTemplateManager;

    invoke-direct {v0}, Lcom/metamoji/ctold/template/CtTemplateManager;-><init>()V

    sput-object v0, Lcom/metamoji/ctold/template/CtTemplateManager;->SINGLETON:Lcom/metamoji/ctold/template/CtTemplateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/metamoji/df/controller/SettingsFactory;

    invoke-direct {v0}, Lcom/metamoji/df/controller/SettingsFactory;-><init>()V

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {}, Lcom/metamoji/ctold/style/CtTagStyleFactory;->instance()Lcom/metamoji/ctold/style/CtTagStyleFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ctold/style/CtTagStyleFactory;->createVoiceTagStyle()Lcom/metamoji/ctold/style/CtTagStyle;

    move-result-object v2

    .line 135
    new-instance v3, Lcom/metamoji/ctold/tag/CtTagClass;

    sget-object v4, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    invoke-direct {v3, v4, v2}, Lcom/metamoji/ctold/tag/CtTagClass;-><init>(Lcom/metamoji/ctold/tag/CtSystemTagId;Lcom/metamoji/ctold/style/CtTagStyle;)V

    .line 136
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lcom/metamoji/ctold/template/CtTemplateManager$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ctold/template/CtTemplateManager$1;-><init>(Lcom/metamoji/ctold/template/CtTemplateManager;Ljava/util/List;)V

    new-instance v1, Lcom/metamoji/ctold/template/CtTemplateManager$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ctold/template/CtTemplateManager$2;-><init>(Lcom/metamoji/ctold/template/CtTemplateManager;)V

    const-string v3, "STagTemplate"

    invoke-virtual {v0, v3, v2, v1}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 153
    const-string v1, "TagTemplate.state"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/metamoji/df/controller/SystemSettings;->open(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory;Landroid/content/Context;)Lcom/metamoji/df/controller/SystemSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    return-void
.end method

.method public static instance()Lcom/metamoji/ctold/template/CtTemplateManager;
    .locals 1

    .line 47
    sget-object v0, Lcom/metamoji/ctold/template/CtTemplateManager;->SINGLETON:Lcom/metamoji/ctold/template/CtTemplateManager;

    return-object v0
.end method

.method public static terminate()V
    .locals 0

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    new-instance v1, Lcom/metamoji/df/model/ModelManagerCleanupContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SystemSettings;->cleanup(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/SystemSettings;->close()V

    return-void
.end method

.method public ensureSaved()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    return-void
.end method

.method public getNoteTagTemplate()Lcom/metamoji/ctold/template/CtTagTemplates;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->noteTagTemplates:Lcom/metamoji/ctold/template/CtNoteTagTemplates;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/metamoji/ctold/template/CtNoteTagTemplates;

    invoke-direct {v0}, Lcom/metamoji/ctold/template/CtNoteTagTemplates;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->noteTagTemplates:Lcom/metamoji/ctold/template/CtNoteTagTemplates;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->noteTagTemplates:Lcom/metamoji/ctold/template/CtNoteTagTemplates;

    return-object v0
.end method

.method public getSystemTagTemplate()Lcom/metamoji/ctold/template/CtTagTemplates;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->systemTagTemplateSettings:Lcom/metamoji/ctold/template/CtTagTemplateSettings;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    const-string v1, "STagTemplate"

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/template/CtTagTemplateSettings;

    iput-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->systemTagTemplateSettings:Lcom/metamoji/ctold/template/CtTagTemplateSettings;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->systemTagTemplateSettings:Lcom/metamoji/ctold/template/CtTagTemplateSettings;

    return-object v0
.end method

.method public getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/metamoji/ctold/CtTagUtil;->isSystemTagId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTemplateManager;->getSystemTagTemplate()Lcom/metamoji/ctold/template/CtTagTemplates;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/template/CtTagTemplates;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTemplateManager;->getNoteTagTemplate()Lcom/metamoji/ctold/template/CtTagTemplates;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/template/CtTagTemplates;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object p1

    return-object p1
.end method

.method public getTagClasses(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
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

    .line 76
    invoke-virtual {p0, v1}, Lcom/metamoji/ctold/template/CtTemplateManager;->getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public resetAllSettings()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/ctold/template/CtTemplateManager;->settingsManager:Lcom/metamoji/df/controller/SystemSettings;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/SystemSettings;->resetAllSettings()V

    return-void
.end method
