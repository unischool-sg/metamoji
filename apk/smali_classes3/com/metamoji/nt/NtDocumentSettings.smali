.class public Lcom/metamoji/nt/NtDocumentSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtDocumentSettings.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtDocumentSettings$ModelProp;,
        Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    }
.end annotation


# static fields
.field public static final MMJNT_MODELPROPVALUE_DOCSETTINGS_VERSION_LATEST:I = 0x1

.field public static final MODELTYPE:Ljava/lang/String; = "MMJNtDocumentSettings"

.field public static final MODELTYPE_THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field private static _defaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

.field public onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 101
    new-instance v0, Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/nt/NtTextUnitSettings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    .line 103
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    const/4 v0, 0x1

    .line 128
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 129
    invoke-static {}, Lcom/metamoji/nt/NtDocumentSettings;->getDefaultValues()Ljava/util/Map;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    invoke-interface {p0, v2, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getDefaultValues()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings;->_defaultValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/metamoji/nt/NtDocumentSettings$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtDocumentSettings$1;-><init>(I)V

    sput-object v0, Lcom/metamoji/nt/NtDocumentSettings;->_defaultValues:Ljava/util/Map;

    .line 85
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtDocumentSettings;->_defaultValues:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getFooter()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "footer"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "header"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNoFrontCoverOnPrinting()Z
    .locals 1

    .line 300
    const-string v0, "noFrontCoverOnPrinting"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getShareTemplateDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 322
    const-string/jumbo v0, "shareTemplateDic"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getTextUnitBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitBackgroundColorAlpha()F
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v0

    return v0
.end method

.method public getTextUnitBorderStyle()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontColor()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontFamily()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontSize()F
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontSize()F

    move-result v0

    return v0
.end method

.method public getTextUnitLineHeight()F
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitLineHeight()F

    move-result v0

    return v0
.end method

.method public getTextUnitRuledLineStyle()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitVerticalWriting()Z
    .locals 1

    .line 276
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitVerticalWriting()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnail()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "thumbnail"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;
    .locals 1

    .line 152
    const-string/jumbo v0, "thumbnailType"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->valueOf(I)Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRule()Ljava/lang/String;
    .locals 1

    .line 311
    const-string/jumbo v0, "titleRule"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUseSystemTextSettings()Z
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "useSystemTextSettings"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 212
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasFrontCover()Z
    .locals 1

    .line 292
    const-string v0, "frontCover"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isExistUseSystemTextSettings()Z
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "useSystemTextSettings"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPropertyChanged(Ljava/lang/String;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeLocaleDependantSettings()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->removeLocaleDependantSettings()V

    return-void
.end method

.method public setFooter(Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "footer"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFrontCover(Z)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "frontCover"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 296
    const-string p1, "HasFrontCover"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocumentSettings;->onPropertyChanged(Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "header"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoFrontCoverOnPrinting(Z)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "noFrontCoverOnPrinting"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShareTemplateDic(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 325
    const-string/jumbo v0, "shareTemplateDic"

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitBackgroundColor(Ljava/lang/String;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitBackgroundColorAlpha(F)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBackgroundColorAlpha(F)V

    return-void
.end method

.method public setTextUnitBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontColor(Ljava/lang/String;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontFamily(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontSize(F)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitFontSize(F)V

    return-void
.end method

.method public setTextUnitLineHeight(F)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitLineHeight(F)V

    return-void
.end method

.method public setTextUnitRuledLineStyle(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitVerticalWriting(Z)V
    .locals 1

    .line 282
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/metamoji/nt/NtDocumentSettings;->_textUnitSettings:Lcom/metamoji/nt/NtTextUnitSettings;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->setTextUnitVerticalWriting(Z)V

    :cond_0
    return-void
.end method

.method public setThumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "thumbnail"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 171
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    return-void
.end method

.method public setThumbnailType(Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "thumbnailType"

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setTitleRule(Ljava/lang/String;)V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "titleRule"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseSystemTextSettings(Z)V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "useSystemTextSettings"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lcom/metamoji/nt/NtDocumentSettings;->getDefaultValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
