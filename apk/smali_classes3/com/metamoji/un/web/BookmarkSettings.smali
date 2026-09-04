.class public Lcom/metamoji/un/web/BookmarkSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "BookmarkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/web/BookmarkSettings$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "MMJUnWebBookmarkSettings"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    const/4 v0, 0x1

    .line 55
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 56
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "bookmarkfolder"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "rootFolder"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static getName(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 2

    .line 107
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmark(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const-string v1, "name"

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmarkFolder(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUrl(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmark(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "url"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBookmark(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 93
    const-string v0, "bookmark"

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isBookmarkFolder(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 100
    const-string v0, "bookmarkfolder"

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setName(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmark(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const-string v1, "name"

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmarkFolder(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {p0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setUrl(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-static {p0}, Lcom/metamoji/un/web/BookmarkSettings;->isBookmark(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "url"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRootFolderModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "rootFolder"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public newBookmarkModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "bookmark"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public newFolderModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/web/BookmarkSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "bookmarkfolder"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method
