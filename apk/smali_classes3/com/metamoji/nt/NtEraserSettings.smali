.class public Lcom/metamoji/nt/NtEraserSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtEraserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtEraserSettings$ModelProp;,
        Lcom/metamoji/nt/NtEraserSettings$ModelPropDefaultValues;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "MMJNtEraserSettings"

.field public static final SUBTYPE:Ljava/lang/String; = "MMJNtEraserStyle"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 94
    const-string v0, "currentIndex"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 97
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtEraserSettings;->defaultEraser1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 98
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 100
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtEraserSettings;->defaultEraser2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 101
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 103
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtEraserSettings;->defaultEraser3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 104
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static defaultEraser1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 113
    const-string v0, "MMJNtEraserStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 116
    const-string v0, "lineWidth"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method static defaultEraser2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 125
    const-string v0, "MMJNtEraserStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 128
    const-string v0, "lineWidth"

    const/16 v1, 0xf

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method static defaultEraser3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 139
    const-string v0, "MMJNtEraserStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 142
    const-string v0, "lineWidth"

    const/16 v1, 0x1e

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method static eraserStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtEraserStyle;
    .locals 4

    .line 84
    new-instance v0, Lcom/metamoji/nt/NtEraserStyle;

    invoke-direct {v0}, Lcom/metamoji/nt/NtEraserStyle;-><init>()V

    .line 87
    const-string v1, "lineWidth"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtEraserStyle;->setLineWidth(F)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getCurrentIndex()I
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "currentIndex"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEraserAt(I)Lcom/metamoji/nt/NtEraserStyle;
    .locals 1

    if-ltz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 64
    invoke-static {p1}, Lcom/metamoji/nt/NtEraserSettings;->eraserStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtEraserStyle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCurrentIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "currentIndex"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEraserSettings;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtEraserSettings;->getEraserAt(I)Lcom/metamoji/nt/NtEraserStyle;

    move-result-object v2

    const/16 v3, 0x5b

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEraserStyle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
