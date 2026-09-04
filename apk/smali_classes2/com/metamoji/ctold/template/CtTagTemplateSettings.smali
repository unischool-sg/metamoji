.class public Lcom/metamoji/ctold/template/CtTagTemplateSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "CtTagTemplateSettings.java"

# interfaces
.implements Lcom/metamoji/ctold/template/CtTagTemplates;


# static fields
.field public static final NT_SYSTEM_TAG_TEMPLATE_SETTINGS_TYPE:Ljava/lang/String; = "STagTemplate"

.field private static final NT_TAG_PROP_CLASSES:Ljava/lang/String; = "TCC"


# instance fields
.field private modelManager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 34
    invoke-interface {p3}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->modelManager:Lcom/metamoji/df/model/IModelManager;

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagClass;

    .line 52
    invoke-virtual {v1}, Lcom/metamoji/ctold/tag/CtTagClass;->getTagId()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/ctold/tag/CtTagClass;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_0
    const-string p1, "TCC"

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagClass;->getTagId()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "TCC"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_1

    return-void

    .line 95
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-virtual {p1, v3}, Lcom/metamoji/ctold/tag/CtTagClass;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 96
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public deleteTagClass(Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "TCC"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public getTagClass(Ljava/lang/String;)Lcom/metamoji/ctold/tag/CtTagClass;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "TCC"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/metamoji/ctold/tag/CtTagClass;

    invoke-direct {v0, p1}, Lcom/metamoji/ctold/tag/CtTagClass;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagClasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagClass;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "TCC"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 64
    new-instance v3, Lcom/metamoji/ctold/tag/CtTagClass;

    invoke-direct {v3, v2}, Lcom/metamoji/ctold/tag/CtTagClass;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 65
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "TCC"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v3, "name"

    invoke-interface {v2, v3, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateTagClass(Lcom/metamoji/ctold/tag/CtTagClass;)V
    .locals 4

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/ctold/tag/CtTagClass;->getTagId()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "TCC"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 121
    iget-object v3, p0, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-virtual {p1, v3}, Lcom/metamoji/ctold/tag/CtTagClass;->getModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 123
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/ctold/template/CtTagTemplateSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
